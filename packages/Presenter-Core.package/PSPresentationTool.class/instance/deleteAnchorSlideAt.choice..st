slide management
deleteAnchorSlideAt: anIndex choice: aSymbol

	| section |
	aSymbol = #reanchor ifTrue: [^ self deleteSlideAt: anIndex].
	aSymbol = #cascade ifFalse: [^ self].
	section := self presentation sectionStartingAt: (self presentation slideAt: anIndex).
	section ifNotNil: [self presentation deleteSectionAndContents: section].
	self selectSlideAt: (self currentSlideNumber min: self presentation slideCount).
	self miniatureController updateSlideMiniatures
