menu bar
createLayout: aString

	| layout |
	self slideContainer removeSelectionDuring:
		[layout := self currentSlide copy.
		layout updateSlideContainer: nil.
		self presentation addLayout: layout withName: aString]
	