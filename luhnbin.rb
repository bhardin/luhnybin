require './luhn.rb'

class LuhnBin
  def initialize
    @luhn = Luhn.new
  end
    
  def mask(line)
    line.gsub(/[0-9]/) do | digits |
      mask_cc(digits)
    end
  end
  
  private
  def mask_cc(digits)
    return digits.length
  end
  
end

LuhnBin = LuhnBin.new

STDIN.each do |line|
  STDOUT << LuhnBin.mask(line)
  STDOUT.flush
end