presentation serialization
exportSlidesAsPNGsInDirectory: aDirectory

	self presentation slidesWithIndexDo: [:each :index |
		self selectSlideNumber: index.
		World doOneCycle.
		each exportAsPNGNamed: (aDirectory / (self slideName: index)) fullName]