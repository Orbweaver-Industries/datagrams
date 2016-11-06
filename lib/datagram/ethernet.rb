module Datagram
  class Ethernet < DatagramBase

    extend Forwardable

    autoload :Header, File.join('datagram','ethernet','header')
    autoload :Payload, File.join('datagram','ethernet','payload')

    def_delegators :header, :dst_mac, :src_mac, :type


    def self.read(string=nil)
      read_parts string, 14
    end

    # "\x01\x80\xC2\x00\x00\x00\x00\x0EX%\xEC:\x00&BB\x03\x00\x00\x00\x00\x00\x90\x00\x00\x0EX%\xEC:\x00\x00\x00\x00\x90\x00\x00\x0EX%\xEC:\x80\x01\x00\x00\x06\x00\x01\x00\x04\x00\xA5\xA5\xA5\xA5\xA5\xA5\xA5\xA5"

    # http://spoofed.org/files/racket/doc/
    # "\x45\x10\x00\x3c\x2f\xdf\x40\x00\x40\x06\x89\x17\xc0\xa8\x00\x64\xc0\xa8\x00\x01\x99\xb7\x00\x35\x29\x39\x28\x66\x00\x00\x00\x00\xa0\x02\x16\xd0\xbc\x04\x00\x00\x02\x04\x05\xb4\x04\x02\x08\x0a\x00\x31\x07\xb9\x00\x00\x00\x00\x01\x03\x03\x07"

  end
end
