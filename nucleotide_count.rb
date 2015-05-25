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
    puts "This is @x -> #{@x}"
    puts "This is @y -> #{letter_to_count}"
    p @x.chars.count(letter_to_count)
    @x
  end

  def histogram
    puts "im here"
  end

end

p Nucleotide.from_dna('GGGGGTAACCCGG').count('T')
p dna = Nucleotide.from_dna("A").histogram
