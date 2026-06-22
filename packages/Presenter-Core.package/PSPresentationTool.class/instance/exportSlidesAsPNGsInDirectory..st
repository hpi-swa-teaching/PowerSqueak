presentation serialization
exportSlidesAsPNGsInDirectory: aDirectory

	self
		exportSlidesAsPNGsInDirectory: aDirectory
		atIndices: (1 to: self presentation slideCount)