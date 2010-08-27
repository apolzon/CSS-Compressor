class CssCompressor
	def initialize(file)
		@file = File.open(file, 'r')
	end

	def compress_to(destination)
		@output = File.open(destination, 'w')
		# Parse file
		# Remove all /* */ lines
		# Remove all blank lines
	end
end
