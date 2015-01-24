import zmq
 
context = zmq.Context()
socket = context.socket(zmq.PUSH)
socket.connect('tcp://sally.ad.pumpingstationone.org:5558')
socket.send_string('Hello from dockerbot!') 
