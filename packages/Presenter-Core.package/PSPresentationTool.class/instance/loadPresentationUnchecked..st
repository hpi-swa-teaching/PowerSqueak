as yet unclassified
loadPresentationUnchecked: aDirectory

	| slidesDirectory |
	self slides removeAll.
	slidesDirectory := aDirectory / self slidesDirectoryName.
	slidesDirectory directoryNames do: [:each | 
		self loadSlideFromDirectory: slidesDirectory / each].
	self selectSlide: 1