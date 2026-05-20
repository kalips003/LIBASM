RAX = syscall number
RDI = arg1
RSI = arg2
RDX = arg3
R10 = arg4
R8  = arg5
R9  = arg6
syscall
====================================================================
0   → read(fd, buffer pointer, number of bytes)
1   → write(fd, buffer pointer, number of bytes)
2   → open(filename, flags, mode)
3   → close(fd)
4   → stat(path, struct pointer)
5   → fstat(fd, struct pointer)
6   → lstat(path, struct pointer)

9   → mmap(addr, length, protection, flags, fd, offset)
10  → mprotect(addr, length, protection)
11  → munmap(addr, length)

39  → getpid()
57  → fork()
59  → execve(path, argv pointer, envp pointer)
60  → exit(exit code)
61  → wait4(pid, status pointer, options, rusage pointer)

62  → kill(pid, signal)

63  → uname(struct pointer)

72  → fcntl(fd, command, argument)
80  → chdir(path)
81  → fchdir(fd)
82  → rename(old path, new path)
83  → mkdir(path, mode)
84  → rmdir(path)

90  → chmod(path, mode)
92  → chown(path, uid, gid)

158 → arch_prctl(code, address)

201 → time(time pointer)
202 → futex(uaddr, operation, value, timeout, uaddr2, value3)

231 → exit_group(exit code)

257 → openat(dirfd, pathname, flags, mode)

273 → readv(fd, iovec pointer, iov count)
275 → writev(fd, iovec pointer, iov count)