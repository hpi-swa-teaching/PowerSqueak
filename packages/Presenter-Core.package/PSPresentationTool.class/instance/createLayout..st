menu bar
createLayout: aString

	| layout |
	self slideContainer removeSelectionDuring:
		[layout := self currentSlide duplicate.
		layout updateSlideContainer: nil.
		self presentation addLayout: layout withName: aString]
	