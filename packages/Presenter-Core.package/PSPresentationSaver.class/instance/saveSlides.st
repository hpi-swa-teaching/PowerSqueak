as yet unclassified
saveSlides

	| aDirectory |
	aDirectory := self createDirectory: self class slidesDirectoryName in: self presentationDirectory.
	self presentation slides doWithIndex: [:each :index |
		self saveSlide: each inDirectory: aDirectory withName: (self slideDirectoryNameOf: index)]