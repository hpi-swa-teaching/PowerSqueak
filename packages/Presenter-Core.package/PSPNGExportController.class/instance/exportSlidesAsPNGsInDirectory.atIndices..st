exporting
exportSlidesAsPNGsInDirectory: aDirectory atIndices: aCollection

	aCollection do: [:index |
		self tool selectSlideAt: index.
		World doOneCycle.
		(self tool presentation slideAt: index)
			exportAsPNGNamed: (aDirectory / (self slideName: index)) fullName]