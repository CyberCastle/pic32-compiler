	.text
ppc476:
	add	3,4,5
	add.	3,4,5
	addc	3,4,5
	addc.	3,4,5
	addco	3,4,5
	addco.	3,4,5
	adde	3,4,5
	adde.	3,4,5
	addeo	3,4,5
	addeo.	3,4,5
	addi	3,4,-128
	addic	3,4,-128
	addic.	3,4,-128
	addis	3,4,-128
	addme	3,4
	addme.	3,4
	addmeo	3,4
	addmeo.	3,4
	addo	3,4,5
	addo.	3,4,5
	addze	3,4
	addze.	3,4
	addzeo	3,4
	addzeo.	3,4
	and	3,4,5
	and.	3,4,5
	andc	13,14,15
	andc.	16,17,18
	andi.	3,4,0xdead
	andis.	3,4,0xdead
	ba	label_abs
	bc	0,1,foo
	bca	4,5,foo_abs
	bcctr	12,0,0
	bcctr	4,10,0
	bcctr	4,6
	bcctr	4,6,0
	bcctrl	12,0,0
	bcctrl	4,10,0
	bcctrl	4,6
	bcctrl	4,6,0
	bcl	2,3,foo
	bclr	12,0,0
	bclr	4,10,0
	bclr	4,6
	bclr	4,6,0
	bclrl	12,0,0
	bclrl	4,10,0
	bclrl	4,6
	bclrl	4,6,0
	b	label
	bl	label
	clrrwi	3,4,4
	cmp	0,0,3,4
	cmp	7,0,3,4
	cmpb      3,4,5
	cmpb	3,4,5
	cmpi	0,0,3,-167
	cmpi	7,0,3,-167
	cmpl	0,0,3,4
	cmpl	7,0,3,4
	cmpli	0,0,3,167
	cmpli	7,0,3,167
	cmplw	3,4
	cmplwi	3,167
	cmpw	3,4
	cmpwi	3,-167
	cntlzw	10,11
	cntlzw.	10,11
	crand	4,5,6
	crandc	3,4,5
	creqv	7,0,1
	crnand	1,2,3
	crnor	0,1,2
	cror	5,6,7
	crorc	2,3,4
	crxor	6,7,0
	dcba	9, 10
	dcbf	6,7
	dcbf	6,7,0
	dcbi	6,7
	dcblc	4, 5, 6
	dcbst	6,7
	dcbt	0,5,6
	dcbt	5,6
	dcbt	8,5,6
	dcbtls	7, 8, 9
	dcbtst	0,6,7
	dcbtst	6,7
	dcbtst	9,6,7
	dcbtstls 10, 11, 12
	dcbz	1,2
	dcbz	5,6
	dccci
	dci
	dci	0
	dci	1
	divw	10,11,12
	divw.	11,12,13
	divwo	10,11,12
	divwo.	11,12,13
	divwu	10,11,12
	divwu.	11,12,13
	divwuo	10,11,12
	divwuo.	11,12,13
	dlmzb	3,4,5
	dlmzb.	3,4,5
	eqv	10,11,12
	eqv.	10,11,12
	extlwi	3,4,20,4
	extsb	3,4
	extsb.	3,4
	extsh	3,4
	extsh.	3,4
	fabs	21,31
	fabs.	21,31
	fadd	10,11,12
	fadd.	10,11,12
	fadds	10,11,12
	fadds.	10,11,12
	fcfid	10,11
	fcfid.	10,11
	fcmpo	3,10,11
	fcmpu	3,4,5
	fcpsgn	10,11,12
	fcpsgn.	10,11,12
	fctid	10,11
	fctid.	10,11
	fctidz	10,11
	fctidz.	10,11
	fctiw	10,11
	fctiw.	10,11
	fctiwz	10,11
	fctiwz.	10,11
	fdiv	10,11,12
	fdiv.	10,11,12
	fdivs	10,11,12
	fdivs.	10,11,12
	fmadd	10,11,12,13
	fmadd.	10,11,12,13
	fmadds	10,11,12,13
	fmadds.	10,11,12,13
	fmr	3,4
	fmr.	3,4
	fmsub	10,11,12,13
	fmsub.	10,11,12,13
	fmsubs	10,11,12,13
	fmsubs.	10,11,12,13
	fmul	10,11,12
	fmul.	10,11,12
	fmuls	10,11,12
	fmuls.	10,11,12
	fnabs	20,30
	fnabs.	20,30
	fneg	3,4
	fneg.	3,4
	fnmadd	10,11,12,13
	fnmadd.	10,11,12,13
	fnmadds	10,11,12,13
	fnmadds. 10,11,12,13
	fnmsub	10,11,12,13
	fnmsub.	10,11,12,13
	fnmsubs	10,11,12,13
	fnmsubs. 10,11,12,13
	fre	14,15
	fre.	14,15
	fres	14,15
	fres.	14,15
	frim	10,11
	frim.	10,11
	frin	10,11
	frin.	10,11
	frip	10,11
	frip.	10,11
	friz	10,11
	friz.	10,11
	frsp	6,7
	frsp.	8,9
	frsqrte   14,15
	frsqrte.  14,15
	frsqrtes  14,15
	frsqrtes. 14,15
	fsel	10,11,12,13
	fsel.	10,11,12,13
	fsqrt	10,11
	fsqrt.	10,11
	fsqrts	10,11
	fsqrts.	10,11
	fsub	10,11,12
	fsub.	10,11,12
	fsubs	10,11,12
	fsubs.	10,11,12
	icbi	3,4
	icblc	16, 17, 18
	icbt	5, 8, 9	
	icbtls	13, 14, 15
	iccci
	ici
	ici	0
	ici	1
	icread	3,4
	inslwi	3,4,8,20
	isel	2,3,4,28
	isync
	lbz	9,0(1)
	lbzu	10,1(1)
	lbzux	20,21,22
	lbzx	3,4,5
	lfd	21,8(1)
	lfdu	22,16(1)
	lfdux	20,21,22
	lfdx	13,14,15
	lfiwax	10,3,4
	lfs	19,0(1)
	lfsu	20,4(1)
	lfsux	10,11,12
	lfsx	10,11,12
	lha	15,6(1)
	lhau	16,8(1)
	lhaux	9,10,11
	lhax	9,10,11
	lhbrx	3,4,5
	lhz	13,0(1)
	lhzu	14,2(1)
	lhzux	20,22,24
	lhzx	23,24,25
	lmw	3,-16(1)
	lswi	5,4,16
	lswx	3,4,5
	lwarx	3,4,5
	lwarx	3,4,5,0
	lwarx	3,4,5,1
	lwbrx	3,4,5
	lwz	6,0(7)
	lwzu	3,16(1)
	lwzux	3,4,5
	lwzx	3,4,5
	macchw		3,4,5
	macchw.		3,4,5
	macchwo		3,4,5
	macchwo.	3,4,5
	macchws		3,4,5
	macchws.	3,4,5
	macchwso	3,4,5
	macchwso.	3,4,5
	macchwsu	3,4,5
	macchwsu.	3,4,5
	macchwsuo	3,4,5
	macchwsuo.	3,4,5
	macchwu		3,4,5
	macchwu.	3,4,5
	macchwuo	3,4,5
	macchwuo.	3,4,5
	machhw		3,4,5
	machhw.		3,4,5
	machhwo		3,4,5
	machhwo.	3,4,5
	machhws		3,4,5
	machhws.	3,4,5
	machhwso	3,4,5
	machhwso.	3,4,5
	machhwsu	3,4,5
	machhwsu.	3,4,5
	machhwsuo	3,4,5
	machhwsuo.	3,4,5
	machhwu		3,4,5
	machhwu.	3,4,5
	machhwuo	3,4,5
	machhwuo.	3,4,5
	maclhw		3,4,5
	maclhw.		3,4,5
	maclhwo		3,4,5
	maclhwo.	3,4,5
	maclhws		3,4,5
	maclhws.	3,4,5
	maclhwso	3,4,5
	maclhwso.	3,4,5
	maclhwsu	3,4,5
	maclhwsu.	3,4,5
	maclhwsuo	3,4,5
	maclhwsuo.	3,4,5
	maclhwu		3,4,5
	maclhwu.	3,4,5
	maclhwuo	3,4,5
	maclhwuo.	3,4,5
	mbar
	mbar	0
	mbar	1
	mcrf	0,1
	mcrfs	3,4
	mcrxr	3
	mfcr    3
	mfcr	3
	mfdcr	5, 234
	mfdcrux	3,4
	mfdcrx	4, 5
	mffs	30
	mffs.	31
	mfmsr	19
	mfocrf	3,0x80
	mfspr	3,0x80
	mftb	3
	msync
	mtcrf	0x80,3
	mtcrf	0xff,3
	mtdcr	432, 8
	mtdcrux	3,4
	mtdcrx	6, 7
	mtfsb0	3
	mtfsb0.	3
	mtfsb1	3
	mtfsb1.	3
	mtfsf   6,10
	mtfsf   6,10,0,0
	mtfsf   6,10,0,1
	mtfsf   6,10,1,0
	mtfsf.  6,11
	mtfsf.  6,11,0,0
	mtfsf.  6,11,0,1
	mtfsf.  6,11,1,0
	mtfsfi  6,0
	mtfsfi	6,0
	mtfsfi  6,0,0
	mtfsfi  6,0,1
	mtfsfi. 6,15
	mtfsfi.	6,15
	mtfsfi. 6,15,0
	mtfsfi. 6,15,1
	mtmsr	10
	mtocrf	0x80,3
	mtspr	0x80,3
	mulchw		3,4,5
	mulchw.		3,4,5
	mulchwu		3,4,5
	mulchwu.	3,4,5
	mulhhw		3,4,5
	mulhhw.		3,4,5
	mulhhwu		3,4,5
	mulhhwu.	3,4,5
	mulhw		3,4,5
	mulhw.		3,4,5
	mulhwu		3,4,5
	mulhwu.		3,4,5
	mullhw		3,4,5
	mullhw.		3,4,5
	mullhwu		3,4,5
	mullhwu.	3,4,5
	mulli		3,4,5
	mullw		3,4,5
	mullw.		3,4,5
	mullwo		3,4,5
	mullwo.		3,4,5
	nand	28,29,30
	nand.	28,29,30
	neg	3,4
	neg.	3,4
	nego	16,17
	nego.	18,19
	nmacchw		3,4,5
	nmacchw.	3,4,5
	nmacchwo	3,4,5
	nmacchwo.	3,4,5
	nmacchws	3,4,5
	nmacchws.	3,4,5
	nmacchwso	3,4,5
	nmacchwso.	3,4,5
	nmachhw		3,4,5
	nmachhw.	3,4,5
	nmachhwo	3,4,5
	nmachhwo.	3,4,5
	nmachhws	3,4,5
	nmachhws.	3,4,5
	nmachhwso	3,4,5
	nmachhwso.	3,4,5
	nmaclhw		3,4,5
	nmaclhw.	3,4,5
	nmaclhwo	3,4,5
	nmaclhwo.	3,4,5
	nmaclhws	3,4,5
	nmaclhws.	3,4,5
	nmaclhwso	3,4,5
	nmaclhwso.	3,4,5
	nor	20,21,22
	nor.	20,21,22
	or	0,2,4
	or.	12,14,16
	orc	15,16,17
	orc.	18,19,20
	ori	1,1,0
	oris	3,4,0xdead
	popcntb	3,4
	prtyw	3,4
	rfci
	rfi
	rfmci
	rlwimi	3,4,12,20,27
	rlwimi.	3,4,12,20,27
	rlwinm	3,4,0,0,27
	rlwinm	3,4,26,6,31
	rlwinm	3,4,4,0,19
	rlwinm. 3,4,0,0,27
	rlwnm	3,4,5,0,31
	rlwnm.	3,4,5,0,31
	rotlw	3,4,5
	rotlw.	3,4,5
	sc
	slw	3,4,5
	slw.	3,4,5
	sraw	3,4,5
	sraw.	3,4,5
	srawi	3,4,16
	srawi.	3,4,16
	srw	3,4,5
	srw.	3,4,5
	srwi	3,4,6
	stb	11,2(1)
	stbu	12,3(1)
	stbux	13,14,15
	stbx	3,4,5
	stfd	25,32(1)
	stfdu	26,40(1)
	stfdux	0,1,2
	stfdx	29,30,31
	stfiwx	10,3,4
	stfs	23,20(1)
	stfsu	24,24(1)
	stfsux	26,27,28
	stfsx	23,24,25
	sth	17,10(1)
	sthbrx	6,7,8
	sthu	18,12(1)
	sthux	21,22,23
	sthx	12,13,14
	stmw	6,-16(1)
	stswi	3,4,16
	stswx	3,4,5
	stw	6,-16(7)
	stwbrx	3,4,5
	stwcx.	3,4,5
	stwu	3,16(1)
	stwux	3,4,5
	stwx	3,4,5
	subf	3,4,5
	subf.	3,4,5
	subfc	3,4,5
	subfc.	3,4,5
	subfco	3,4,5
	subfco.	3,4,5
	subfe	3,4,5
	subfe.	3,4,5
	subfeo	3,4,5
	subfeo.	3,4,5
	subfic	3,4,5
	subfme	3,4
	subfme.	3,4
	subfmeo	3,4
	subfmeo. 3,4
	subfo	3,4,5
	subfo.	3,4,5
	subfze	3,4
	subfze.	3,4
	subfzeo	3,4
	subfzeo. 3,4
	tlbivax	7, 8
	tlbre   1, 2, 7
	tlbsx	11, 12
	tlbsx	12, 13, 14
	tlbsx.	12, 13, 14
	tlbsync
	tlbwe
	tlbwe	0,0,0
	tlbwe	1,1,1
	trap
	tw	31,0,0
	tw	4,3,4
	tw	5,3,4
	tweq	3,4
	twgti	3,15
	twi	6,3,15
	twi	8,3,15
	twlge	3,4
	twllei	3,15
	wrtee	3
	wrteei	1
	xor	29,30,31
	xor.	29,30,31
	xori	3,4,0xdead
	xoris	3,4,0xdead