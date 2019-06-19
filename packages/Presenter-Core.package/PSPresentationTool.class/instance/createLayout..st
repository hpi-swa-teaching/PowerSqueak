menu bar
createLayout: aString

	| layout |
	self slideContainer removeSelectionDuring:
		[layout := self currentSlide duplicate.
		self presentation addLayout: layout withName: aString]
	