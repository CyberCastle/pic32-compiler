
// DO NOT EDIT THIS FILE - it is machine generated -*- c++ -*-

#ifndef __java_util_concurrent_locks_ReentrantLock$Sync__
#define __java_util_concurrent_locks_ReentrantLock$Sync__

#pragma interface

#include <java/util/concurrent/locks/AbstractQueuedSynchronizer.h>

class java::util::concurrent::locks::ReentrantLock$Sync : public ::java::util::concurrent::locks::AbstractQueuedSynchronizer
{

public: // actually package-private
  ReentrantLock$Sync();
  virtual void lock() = 0;
  virtual jboolean nonfairTryAcquire(jint);
public: // actually protected
  virtual jboolean tryRelease(jint);
  virtual jboolean isHeldExclusively();
public: // actually package-private
  virtual ::java::util::concurrent::locks::AbstractQueuedSynchronizer$ConditionObject * newCondition();
  virtual ::java::lang::Thread * getOwner();
  virtual jint getHoldCount();
  virtual jboolean isLocked();
private:
  void readObject(::java::io::ObjectInputStream *);
  static const jlong serialVersionUID = -5179523762034025860LL;
public:
  static ::java::lang::Class class$;
};

#endif // __java_util_concurrent_locks_ReentrantLock$Sync__