class Nucleotide
  def self.from_dna(strand)
    raise ArgumentError, "Invalid RNA nucleotide." if strand.chars.include?("J") 
    strand
    Nucleotide.new(strand)
    strand
  end

  def initialize(x)
  end

  def self.histogram
  end

  def histogram
  end

end

# dna = Nucleotide.from_dna("A").histogram


