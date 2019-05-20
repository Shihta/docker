import pexpect
import time, sys

child = pexpect.spawn('telnet 10.254.0.78')
child.expect('User:')
child.sendline('admin')
child.expect('Password:')
child.sendline('')
child.expect('\(Lab178LY8\).+#')

for i in range(1, 49):
    cmd = "show running-config interface 0/%d" % i
    child.sendline(cmd)
    child.expect('\(Lab178LY8\).+#')
    # print(cmd)
    print(child.before.decode("utf-8").replace("\r", "").strip())
    print("--------------")
sys.exit(0)
