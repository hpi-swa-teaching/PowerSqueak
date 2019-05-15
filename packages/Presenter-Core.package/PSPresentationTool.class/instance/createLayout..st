menu bar
createLayout: aString

	| layout |
	layout := self currentSlide copy.
	layout updateSlideContainer: nil.
	self presentation addLayout: layout withName: aString
	