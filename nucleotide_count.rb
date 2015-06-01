class Nucleotide
  def self.from_dna(strand)
    valid_nucleo = %w(A G C T)
    unless strand.chars.all? { |x| valid_nucleo.include?(x) }
      raise ArgumentError, "Invalid RNA nucleotide."  
    end
    Nucleotide.new(strand)
  end

  def initialize(dna)
    @dna = dna
  end

  def count(letter_to_count)
    @dna.chars.count(letter_to_count)
  end

  def histogram
    expected = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    @dna.chars.each do |x|
      expected[x] += 1
    end
    expected
  end
end
