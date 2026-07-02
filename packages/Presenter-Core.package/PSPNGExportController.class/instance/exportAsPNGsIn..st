exporting
exportAsPNGsIn: aDirectory

	self
		exportAsPNGsIn: aDirectory
		atIndices: (1 to: self tool presentation slideCount)
		message: 'Your presentation has been exported to: '