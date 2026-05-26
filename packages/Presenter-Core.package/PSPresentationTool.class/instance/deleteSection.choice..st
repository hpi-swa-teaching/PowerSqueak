sections
deleteSection: aPSSlideSection choice: aSymbol

	aSymbol = #cascade ifTrue: [
		((self presentation descendantSectionsOf: aPSSlideSection)
			copyWith: aPSSlideSection) do: [:each | self forgetSectionHeader: each].
		self presentation deleteSectionAndContents: aPSSlideSection.
		self selectSlideAt: (self currentSlideNumber min: self presentation slideCount)].
	aSymbol = #promote ifTrue: [
		self forgetSectionHeader: aPSSlideSection.
		self presentation promoteChildrenOfSection: aPSSlideSection].
	self updateSlideMiniatures
