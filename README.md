# INTIME
End System Aware RBUDP

The code here shows how we built on top of INTIME to create a parallel RBUDP which is end system aware.

In file QUANTAnet_rbudpReceiver_c.cxx:
Line #47 shows the Effective Bottleneck Rate Table that we use

Line #60 starts with a method which forks a process to monitor the runqueue to determine the number of CPU bound processes

Line #87 and #114 show how we deal with parallel receive threads (one per core). Here each thread works using the INTIME approach.

Line #428, we determine the number of cores in the system and send that information to the sender. The details of why we do this can be found in "Minimizing the Data Transfer Time Using Multicore End-System Aware Flow Bifurcation", which was published by us at IEEE CCGrid 2012.

