presentation serialization
exportSlidesAsPNGsInDirectory: aDirectory

	self presentation slidesWithIndexDo: [:each :index |
		self selectSlideNumber: index.
		World doOneCycle.
		each exportAsPNGNamed: (aDirectory / ('slide', index, '.png')) fullName]