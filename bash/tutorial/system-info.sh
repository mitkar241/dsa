#!/bin/bash

users

whoami

w
: '
 15:45:12 up  5:26,  1 user,  load average: 0.27, 0.42, 0.24
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
raktim   :0       :0               10:21   ?xdm?  15:06   0.03s /usr/lib/gdm3/g
'
w --no-header
#raktim   :0       :0               10:21   ?xdm?  15:09   0.03s /usr/lib/gdm3/g

w --short
: '
 15:46:23 up  5:27,  1 user,  load average: 0.13, 0.34, 0.22
USER     TTY      FROM              IDLE WHAT
raktim   :0       :0               ?xdm?  /usr/lib/gdm3/gdm-x-session --run-s
'

w --short --no-header
#raktim   :0       :0               ?xdm?  /usr/lib/gdm3/gdm-x-session --run-s

w --ip-addr
: '
 15:45:24 up  5:26,  1 user,  load average: 0.23, 0.40, 0.23
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
raktim   :0       :0               10:21   ?xdm?  15:07   0.03s /usr/lib/gdm3/g
'

w --old-style
'
 15:45:38 up  5:26,  1 user,  load average: 0.18, 0.38, 0.23
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
raktim   :0       :0               10:21   ?xdm?  15:08m        /usr/lib/gdm3/g
'

w --no-current
: '
 15:46:06 up  5:27,  1 user,  load average: 0.17, 0.36, 0.23
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
raktim   :0       :0               10:21   ?xdm?  15:10   0.03s /usr/lib/gdm3/g
'

w --from
: '
 15:46:54 up  5:27,  1 user,  load average: 0.08, 0.31, 0.21
USER     TTY        LOGIN@   IDLE   JCPU   PCPU WHAT
raktim   :0        10:21   ?xdm?  15:13   0.03s /usr/lib/gdm3/gdm-x-session --r
'

who
who --all

uptime
#15:34:27 up  5:15,  1 user,  load average: 0.05, 0.08, 0.02

uptime -V
#uptime from procps-ng 3.3.16

uptime --pretty
#up 5 hours, 15 minutes

uptime --since
#2022-01-28 10:19:04
