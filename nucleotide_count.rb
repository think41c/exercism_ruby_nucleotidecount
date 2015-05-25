class Nucleotide
  def self.from_dna(strand)
    if strand.chars.include?("J")
      raise ArgumentError, "Invalid RNA nucleotide."  
    end

    strand
    # Nucleotide.new(strand)
  end

# puts "hi" if [1, 2, 3].all? { |i| (1..9).include?(i) }


  def initialize(x)
  end

  def self.histogram
  end

  def histogram
  end

end

# dna = Nucleotide.from_dna("A").histogram
# p dna

