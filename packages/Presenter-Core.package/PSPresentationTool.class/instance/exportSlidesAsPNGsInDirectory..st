exporting
exportSlidesAsPNGsInDirectory: aDirectory

	self slides withIndexDo: [:each :index |
		self selectSlideNumber: index.
		World doOneCycle.
		each exportAsPNGNamed: (aDirectory / ('slide', index, '.png')) fullName]