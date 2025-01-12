/*  Run function for the micromips simulator

    Copyright (C) 2005-2013 Free Software Foundation, Inc.
    Contributed by Imagination Technologies, Ltd.  
    Written by Andrew Bennett <andrew.bennett@imgtec.com>.

    This file is part of GDB, the GNU debugger.

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include "sim-main.h"
#include "micromips16_idecode.h"
#include "micromips32_idecode.h"
#include "micromips_m32_idecode.h"
#include "bfd.h"


#define SD sd
#define CPU cpu

void 
sim_engine_run (SIM_DESC sd, int next_cpu_nr, int nr_cpus, int signal);

address_word
micromips_instruction_decode (SIM_DESC sd, sim_cpu * cpu,
			      address_word cia,
			      int instruction_size)
{

  if (instruction_size == MICROMIPS_DELAYSLOT_SIZE_ANY)
    {
      micromips16_instruction_word instruction_0 = IMEM16_MICROMIPS (cia);

      if (MICROMIPS_MAJOR_OPCODE_3_5 (instruction_0) == 2
	  || MICROMIPS_MAJOR_OPCODE_3_5 (instruction_0) == 3
	  || (MICROMIPS_MAJOR_OPCODE_3_5 (instruction_0) == 1
	      && MICROMIPS_MAJOR_OPCODE_0_2 (instruction_0) < 5))
	return micromips16_idecode_issue (sd, instruction_0, cia);
      else
	{
	  micromips32_instruction_word instruction_0 = IMEM32_MICROMIPS (cia);
	  return micromips32_idecode_issue (sd, instruction_0, cia);
	}
    }
  else if (instruction_size == MICROMIPS_DELAYSLOT_SIZE_16)
    {
      micromips16_instruction_word instruction_0 = IMEM16_MICROMIPS (cia);

      if (MICROMIPS_MAJOR_OPCODE_3_5 (instruction_0) == 2
	  || MICROMIPS_MAJOR_OPCODE_3_5 (instruction_0) == 3
	  || (MICROMIPS_MAJOR_OPCODE_3_5 (instruction_0) == 1
	      && MICROMIPS_MAJOR_OPCODE_0_2 (instruction_0) < 5))
        {
	return micromips16_idecode_issue (sd, instruction_0, cia);
        }
      else
	sim_engine_abort (sd, cpu, cia,
			  "Invalid 16 bit micromips instruction");
    }
  else if (instruction_size == MICROMIPS_DELAYSLOT_SIZE_32)
    {
      micromips32_instruction_word instruction_0 = IMEM32_MICROMIPS (cia);
      return micromips32_idecode_issue (sd, instruction_0, cia);
    }
  else
    return NULL_CIA;
}

void
sim_engine_run (SIM_DESC sd, int next_cpu_nr, int nr_cpus,
		int signal)
{
  micromips_m32_instruction_word instruction_0;
  sim_cpu *cpu = STATE_CPU (sd, next_cpu_nr);
  micromips32_instruction_address cia = CIA_GET (cpu);
  isa_mode = ISA_MODE_MIPS32;

  while (1)
    {
      micromips32_instruction_address nia;

      /* Allow us to switch back from MIPS32 to microMIPS
	 This covers two cases:
	 1. Setting the correct isa mode based on the start address
	 from the elf header.
	 2. Setting the correct isa mode after a MIPS32 jump or branch
	 instruction.  */
      if ((isa_mode == ISA_MODE_MIPS32)
	  && ((cia & 0x1) == ISA_MODE_MICROMIPS))
	{
	  isa_mode = ISA_MODE_MICROMIPS;
	  cia = cia & ~0x1;
	}

#if defined (ENGINE_ISSUE_PREFIX_HOOK)
      ENGINE_ISSUE_PREFIX_HOOK ();
#endif
      switch (isa_mode)
	{
	case ISA_MODE_MICROMIPS:
	  nia =
	    micromips_instruction_decode (sd, cpu, cia,
					  MICROMIPS_DELAYSLOT_SIZE_ANY);
	  break;
	case ISA_MODE_MIPS32:
	  instruction_0 = IMEM32 (cia);
	  nia = micromips_m32_idecode_issue (sd, instruction_0, cia);
	  break;
	default:
	  nia = NULL_CIA;
	}

#if defined (ENGINE_ISSUE_POSTFIX_HOOK)
      ENGINE_ISSUE_POSTFIX_HOOK ();
#endif

      /* Update the instruction address */
      cia = nia;

      /* process any events */
      if (sim_events_tick (sd))
	{
	  CIA_SET (CPU, cia);
	  sim_events_process (sd);
	  cia = CIA_GET (CPU);
	}
    }
}
