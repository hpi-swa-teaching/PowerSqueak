sections
deleteSection: aPSSlideSection choice: aSymbol

	aSymbol = #cascade ifTrue: [
		self presentation deleteSectionAndContents: aPSSlideSection.
		self selectSlideAt: (self currentSlideNumber min: self presentation slideCount)].
	aSymbol = #promote ifTrue: [
		self presentation promoteChildrenOfSection: aPSSlideSection].
	self updateSlideMiniatures
