class CssCompressor
	def initialize(file)
		raise "File not found" unless File.file?(file)
		@file = File.open(file, 'r')
	end

	def compress_to(destination)
		@output = File.new(destination, 'w')
		# Parse file
		# Remove all /* */ lines
		@file.each_line do |f|
			if (f.scan("/*").empty?) && (/\S/ =~ f)
				@output << f
			end
		end
		# Remove all blank lines
	end
end
