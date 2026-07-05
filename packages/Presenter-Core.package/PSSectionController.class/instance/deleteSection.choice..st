section deletion
deleteSection: aPSSlideSection choice: aSymbol

	aSymbol = #cascade ifTrue: [
		self presentation deleteSectionAndContents: aPSSlideSection.
		self tool selectSlideAt:
			(self tool currentSlideNumber min: self presentation slideCount)].
	aSymbol = #promote ifTrue: [
		self presentation promoteChildrenOfSection: aPSSlideSection].
	self miniatureController updateSlideMiniatures