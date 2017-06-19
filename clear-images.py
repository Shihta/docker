#!/usr/bin/env python

import subprocess, sys, os

print 'hih'

def runcmd(cmds, cwd=None, wait=True, tolog=False, tolog_prefix=""):
    if tolog:
        logger.info('%si-cmd: %s' % (tolog_prefix, cmds))
    _PIPE = subprocess.PIPE
    try:
        p = subprocess.Popen(cmds, stdin=_PIPE, stdout=_PIPE,
                             stderr=_PIPE, cwd=cwd, shell=True)
        if wait:
            (stdout, stderr) = p.communicate()
            return (stdout, stderr)
        else:
            return p
    except OSError, e:
        print sys.stderr, "Execution failed:", e

print sys.argv

condition = sys.argv[1] if len(sys.argv) > 1 else "none"

res = runcmd("docker images |grep %s" % condition)
lines = res[0].splitlines()

for l in lines:
    a = l.split()
    if a[1].find("none") >= 0:
        # print a
        cmd = "docker rmi %s" % a[2]
        print cmd
        res = runcmd(cmd)
        print res
    else:
        cmd = "docker rmi %s:%s" % (a[0], a[1])
        print cmd
        res = runcmd(cmd)
        print res

