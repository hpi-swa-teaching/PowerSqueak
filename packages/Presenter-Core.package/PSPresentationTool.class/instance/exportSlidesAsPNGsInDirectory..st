presentation serialization
exportSlidesAsPNGsInDirectory: aDirectory

	self presentation slidesWithIndexDo: [:each :index |
		self selectSlideAt: index.
		World doOneCycle.
		each exportAsPNGNamed: (aDirectory / (self slideName: index)) fullName]