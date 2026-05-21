## Process Control
0   read
1   write
2   open
3   close
60  exit
231 exit_group
57  fork
56  clone
59  execve
61  wait4
62  kill

## File / FS
257 openat
258 mkdirat
263 unlinkat
264 renameat
21  access
5   fstat
9   mmap
11  munmap
16  ioctl

## Memory
9   mmap
10  mprotect
11  munmap
12  brk

## Time
35  nanosleep
96  gettimeofday
228 clock_gettime

## Networking
41  socket
42  connect
43  accept
44  sendto
45  recvfrom
49  bind
50  listen

## Signals
13  rt_sigaction
14  rt_sigprocmask

## Misc
39  getpid
102 getuid
104 getgid
110 getppid