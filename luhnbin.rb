require 'luhn'

class luhnbin
  def initialize
    @luhn = Luhn.new
  end
    
  def mask(line)
    return line
  end
end

luhnybin = LuhnyBin.new

STDIN.each do |line|
  STDOUT << luhnybin.mask(line)
  STDOUT.flush
end