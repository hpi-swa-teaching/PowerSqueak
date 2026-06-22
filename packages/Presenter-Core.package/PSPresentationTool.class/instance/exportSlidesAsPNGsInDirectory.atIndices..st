presentation serialization
exportSlidesAsPNGsInDirectory: aDirectory atIndices: aCollection

	aCollection do: [:index |
		self selectSlideAt: index.
		World doOneCycle.
		(self presentation slideAt: index) exportAsPNGNamed: (aDirectory / (self slideName: index)) fullName]
