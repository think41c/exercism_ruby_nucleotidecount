class Nucleotide
  def self.from_dna(strand)
    valid_nucleo = %w(A G C T)
    invalid_nucleo = %w(B D E F H I J K L M N O P Q R S U V W X Y Z)
    if strand.chars.any? { |x| invalid_nucleo.include?(x) }
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
    puts @x
    expected = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    @x.chars.each do |x|
      expected[x] += 1
    end
    expected
  end
end
# p Nucleotide.from_dna('GGGGGTAACCCGG').count('T')
p dna = Nucleotide.from_dna("ATC").histogram
