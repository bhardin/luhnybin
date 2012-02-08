require './luhn.rb'

class LuhnBin
  def initialize
    @luhn = Luhn.new
  end
    
  def mask(line)
    return line
  end
end

LuhnBin = LuhnBin.new

STDIN.each do |line|
  STDOUT << LuhnBin.mask(line)
  STDOUT.flush
end