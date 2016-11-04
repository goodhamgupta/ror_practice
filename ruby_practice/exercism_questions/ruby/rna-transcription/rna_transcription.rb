# Program to convert given DNA sequence to RNA

module BookKeeping
	VERSION = 4
end

class ComplementTest
	# Class representing the conversion between DNA to RNA sequence
	def self.of_dna(dna_sequence)
		mapping = {"G" => "C", "C" => "G", "T" => "A" , "A" => "U"}
		rna_sequence = ""
		dna_sequence.each_char() do |c|
			data = mapping[c]
			unless mapping[c].nil? || mapping[c] == 0 # Checking for nil/none incase mapping is not found
				rna_sequence.concat(mapping[c])
			end
		end
		rna_sequence
	end
end
