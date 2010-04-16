def initialize(host = 'localhost', port = 1234)
  @host = host
  @port = port
  socket
end

file_name = $*[0]                                                                                                    
data = open(file_name)
  # socket ||= TCPSocket.new @host, @port

  socket.puts data
  output = ""
  while !socket.eof? do
    output = output + socket.read(1024)
  end
  # puts "output[0..100] = "+output[0..100].inspect.to_s
  # puts "output[-100, 100] = "+output[-100, 100].inspect.to_s
  # puts "output = " + output[0..100].to_s + " ... " + output[-100, 100].to_s
  # puts "output = " + output.to_s
  
  socket.close 
  
  @names = output.gsub("\t","\n") #if output
  file_outp = open('/Users/anna/work/test_neti_app/test_web_service/out_file$$.txt', 'w')
  file_outp.print @names.inspect.to_s