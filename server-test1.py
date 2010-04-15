import gobject, socket, time
from netineti import *
print "Initializing...model training.."
NN = NetiNetiTrain()
nf = nameFinder(NN)
print "..model ready"
total_data = []
t1 = time.clock()
import nltk

def server(host, port):
	'''Initialize server and start listening.'''
	sock = socket.socket()
	sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
	sock.bind((host, port))
	sock.listen(1)
	print "Listening..."
	gobject.io_add_watch(sock, gobject.IO_IN, listener)
 
 
def listener(sock, *args):
	'''Asynchronous connection listener. Starts a handler for each connection.'''
	conn, addr = sock.accept()
	print "Connected"
	gobject.io_add_watch(conn, gobject.IO_IN, handler)
	return True
 
 
def handler(conn, *args):
	'''Asynchronous connection handler. Processes each line from the socket.'''
	global total_data
	data = conn.recv(1024)
	print data
	# time.sleep(5)
	if len(data) < 1024:
	# if not len(data):
		total_data.append(data)
		print "Connection closed."
		t_data = ' '.join(total_data)
		# print "len(total_data) = %s" % len(total_data)
		total_data = []
		t2 = time.clock()
		t = t2 - t1
		print t
		# time.sleep(2)
		conn.send(nf.find_names(t_data))
		# print "first_test = %s" % first_test
		return False
		# break
	else:
		total_data.append(data)
		return True
	# t_data = ''.join(total_data)
	# conn.send(t_data.replace("\n","\t").upper())		
		
	# 	
	# 	
	# line = conn.recv(1024)
	# if len(line) < 1024:
	# 	print line
	# 	print "Connection closed."
	# 	return False
	# else:
	# 	print line.replace("\n","\t").upper()
	# 	# conn.send(line.replace("\n","\t").upper())
	# 	return True
	#  

 
if __name__=='__main__':
	server("localhost", 1234)
	total_data = []
	gobject.MainLoop().run()

# import socket
# import threading
# import SocketServer
# import time
# 
# class ThreadedTCPRequestHandler(SocketServer.BaseRequestHandler):
# 
#     def handle(self):
#         data = self.request.recv(1024)
#         cur_thread = threading.currentThread()
#         response = "response = %s: %s" % (cur_thread.getName(), data)
#         print "response = %s" % response 
#         # self.data = self.request.recv(1024).strip()
#         print "%s wrote:" % self.client_address[0]
#         # print self.data
#         print "data = "
#         print data
#         time.sleep(5)
#         self.request.send(data.replace("\n","\t").upper())
# 
# # import SocketServer
# # import time
# # 
# # class MyTCPHandler(SocketServer.StreamRequestHandler):
# # 	#     """
# # 	#     It is instantiated once per connection to the server, and must
# # 	#     override the handle() method to implement communication to the
# # 	#     client.
# # 	#     """
# 
# 
#     def handle(self):
#         # self.request is the TCP socket connected to the client
#         total_data = []
#         while 1:
# 	            data = self.request.recv(1024)
# 							# mystery: doesn't work without printing out that
# 	            print data
# 	            if len(data) < 1024:
# 	                total_data.append(data)
# 	                break
# 	            total_data.append(data)
#         t_data = ''.join(total_data)
# 
#         # just send back the same data, but upper-cased, for some reason doesn't work properly with "\n", 
#         # so need a change "\n"/"\t" and back in Python and Ruby
#         time.sleep(2)
#         self.request.send(t_data.replace("\n","\t").upper())
# 
# if __name__ == "__main__":
#     HOST, PORT = "localhost", 1234
# 
#     # Create the server, binding to localhost on port 1234
#     server = SocketServer.TCPServer((HOST, PORT), MyTCPHandler)
# 
#     # Activate the server; this will keep running until you
#     # interrupt the program with Ctrl-C
#     server.serve_forever()
