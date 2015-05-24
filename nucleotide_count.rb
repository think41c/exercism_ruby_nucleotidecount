class Nucleotide
  def self.from_dna(strand)
    raise ArgumentError, "Invalid RNA nucleotide." if strand.chars.include?("J") 
    nucleotides = strand
    nucleotides
  end

  def self.histogram
    a = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
  end

end

