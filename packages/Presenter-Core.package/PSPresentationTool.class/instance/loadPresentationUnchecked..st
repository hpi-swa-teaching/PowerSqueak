as yet unclassified
loadPresentationUnchecked: aDirectory

	| slidesDirectory |
	self slides removeAll.
	slidesDirectory := aDirectory / 'slides'.
	slidesDirectory directoryNames do: [:each | 
		self loadSlideFromDirectory: slidesDirectory / each].
	self selectSlide: 1