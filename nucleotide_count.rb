class Nucleotide
  def self.from_dna(strand)
    valid_nucleo = %w(A G C T)
    if strand.chars.any? { |x| !valid_nucleo.include?(x) }
      raise ArgumentError, "Invalid RNA nucleotide."  
    end
    Nucleotide.new(strand)
  end

  def initialize(x)
    @x = x
  end

  def count(letter_to_count)
    @letter_to_count = letter_to_count
    @x.chars.count(letter_to_count)
  end

  def histogram
    expected = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    @x.chars.each do |x|
      expected[x] += 1
    end
    expected
  end
end
