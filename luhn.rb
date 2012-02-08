class Luhn
  def initialize
    digits = (0..9)
    @doublings = [
      digits.to_a,
      digits.map {|d| (d.to_i * 2).to_s.split('').map {|c| c.to_i}.reduce(:+)}
    ]
  end

  def check(digits)
    doubled = digits.reverse.split('').each_with_index.map {|c, i| @doublings[i % 2][c.to_i]}
    doubled.reduce(:+) % 10 == 0
  end
end
