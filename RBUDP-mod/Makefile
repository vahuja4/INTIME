CXXFLAGS= -O3 -lpthread -fopenmp

PROGRAMS = sendfile recvfile usend urecv sendfilelist recvfilelist sendstream recvstream

S1_PROGRAMS = sendfile_s1 recvfile_s1
all: ${PROGRAMS}

stage1: ${S1_PROGRAMS}

sendfile: sendfile.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpSender_c.cxx
	g++ ${CXXFLAGS} -o sendfile sendfile.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpSender_c.cxx

recvfile: recvfile.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpReceiver_c.cxx
	g++ ${CXXFLAGS} -o recvfile recvfile.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpReceiver_c.cxx

sendfile_s1: sendfile.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpSender_c_s1.cxx
	g++ ${CXXFLAGS} -o sendfile_s1 sendfile.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpSender_c_s1.cxx

recvfile_s1: recvfile.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpReceiver_c_s1.cxx
	g++ ${CXXFLAGS} -o recvfile_s1 recvfile.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpReceiver_c_s1.cxx


sendfilelist: sendfilelist.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpSender_c.cxx
	g++ ${CXXFLAGS} -o sendfilelist sendfilelist.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpSender_c.cxx

recvfilelist: recvfilelist.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpReceiver_c.cxx
	g++ ${CXXFLAGS} -o recvfilelist recvfilelist.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpReceiver_c.cxx

usend: usend.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpSender_c.cxx
	g++ ${CXXFLAGS} -o usend usend.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpSender_c.cxx -lpthread

urecv: urecv.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpReceiver_c.cxx
	g++ ${CXXFLAGS} -o urecv urecv.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpReceiver_c.cxx

sendstream: sendstream.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpSender_c.cxx
	g++ ${CXXFLAGS} -o sendstream sendstream.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpSender_c.cxx

recvstream: recvstream.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpReceiver_c.cxx
	g++ ${CXXFLAGS} -o recvstream recvstream.cxx QUANTAnet_rbudpBase_c.cxx QUANTAnet_rbudpReceiver_c.cxx

clean:
	rm -f *.o ${PROGRAMS} ${S1_PROGRAMS}


