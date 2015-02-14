module Process

  CLOCK_BOOTTIME = 7
  CLOCK_BOOTTIME_ALARM = 9
  CLOCK_MONOTONIC = 1
  CLOCK_MONOTONIC_COARSE = 6
  CLOCK_MONOTONIC_RAW = 4
  CLOCK_PROCESS_CPUTIME_ID = 2
  CLOCK_REALTIME = 0
  CLOCK_REALTIME_ALARM = 8
  CLOCK_REALTIME_COARSE = 5
  CLOCK_THREAD_CPUTIME_ID = 3
  GID = Process::GID
  PRIO_PGRP = 1
  PRIO_PROCESS = 0
  PRIO_USER = 2
  RLIMIT_AS = 9
  RLIMIT_CORE = 4
  RLIMIT_CPU = 0
  RLIMIT_DATA = 2
  RLIMIT_FSIZE = 1
  RLIMIT_MEMLOCK = 8
  RLIMIT_MSGQUEUE = 12
  RLIMIT_NICE = 13
  RLIMIT_NOFILE = 7
  RLIMIT_NPROC = 6
  RLIMIT_RSS = 5
  RLIMIT_RTPRIO = 14
  RLIMIT_RTTIME = 15
  RLIMIT_SIGPENDING = 11
  RLIMIT_STACK = 3
  RLIM_INFINITY = 18446744073709551615
  RLIM_SAVED_CUR = 18446744073709551615
  RLIM_SAVED_MAX = 18446744073709551615
  Status = Process::Status
  Sys = Process::Sys
  Tms = Process::Tms
  UID = Process::UID
  WNOHANG = 1
  WUNTRACED = 2

  def self.abort(arg0, arg1, *rest)
  end

  def self.argv0
  end

  def self.clock_getres(arg0, arg1, *rest)
  end

  def self.clock_gettime(arg0, arg1, *rest)
  end

  def self.daemon(arg0, arg1, *rest)
  end

  def self.detach(arg0)
  end

  def self.egid
  end

  def self.egid=(arg0)
  end

  def self.euid
  end

  def self.euid=(arg0)
  end

  def self.exec(arg0, arg1, *rest)
  end

  def self.exit(arg0, arg1, *rest)
  end

  def self.exit!(arg0, arg1, *rest)
  end

  def self.fork
  end

  def self.getpgid(arg0)
  end

  def self.getpgrp
  end

  def self.getpriority(arg0, arg1)
  end

  def self.getrlimit(arg0)
  end

  def self.getsid(arg0, arg1, *rest)
  end

  def self.gid
  end

  def self.gid=(arg0)
  end

  def self.groups
  end

  def self.groups=(arg0)
  end

  def self.initgroups(arg0, arg1)
  end

  def self.kill(arg0, arg1, *rest)
  end

  def self.maxgroups
  end

  def self.maxgroups=(arg0)
  end

  def self.pid
  end

  def self.ppid
  end

  def self.setpgid(arg0, arg1)
  end

  def self.setpgrp
  end

  def self.setpriority(arg0, arg1, arg2)
  end

  def self.setproctitle(arg0)
  end

  def self.setrlimit(arg0, arg1, *rest)
  end

  def self.setsid
  end

  def self.spawn(arg0, arg1, *rest)
  end

  def self.times
  end

  def self.uid
  end

  def self.uid=(arg0)
  end

  def self.wait(arg0, arg1, *rest)
  end

  def self.wait2(arg0, arg1, *rest)
  end

  def self.waitall
  end

  def self.waitpid(arg0, arg1, *rest)
  end

  def self.waitpid2(arg0, arg1, *rest)
  end



  protected


  private

  def argv0
  end

  def clock_getres(arg0, arg1, *rest)
  end

  def clock_gettime(arg0, arg1, *rest)
  end

  def daemon(arg0, arg1, *rest)
  end

  def detach(arg0)
  end

  def egid
  end

  def egid=(arg0)
  end

  def euid
  end

  def euid=(arg0)
  end

  def getpgid(arg0)
  end

  def getpgrp
  end

  def getpriority(arg0, arg1)
  end

  def getrlimit(arg0)
  end

  def getsid(arg0, arg1, *rest)
  end

  def gid
  end

  def gid=(arg0)
  end

  def groups
  end

  def groups=(arg0)
  end

  def initgroups(arg0, arg1)
  end

  def kill(arg0, arg1, *rest)
  end

  def maxgroups
  end

  def maxgroups=(arg0)
  end

  def pid
  end

  def ppid
  end

  def setpgid(arg0, arg1)
  end

  def setpgrp
  end

  def setpriority(arg0, arg1, arg2)
  end

  def setproctitle(arg0)
  end

  def setrlimit(arg0, arg1, *rest)
  end

  def setsid
  end

  def times
  end

  def uid
  end

  def uid=(arg0)
  end

  def wait(arg0, arg1, *rest)
  end

  def wait2(arg0, arg1, *rest)
  end

  def waitall
  end

  def waitpid(arg0, arg1, *rest)
  end

  def waitpid2(arg0, arg1, *rest)
  end

end
