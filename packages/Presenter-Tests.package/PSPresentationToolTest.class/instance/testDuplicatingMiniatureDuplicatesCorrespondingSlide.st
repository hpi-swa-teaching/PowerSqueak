miniature view tests
testDuplicatingMiniatureDuplicatesCorrespondingSlide

	| slide duplicatedSlide |
	slide := self currentSlide.
	slide addContent: (Morph new center: slide center).
	(self miniatureOf: slide) duplicateSlide.
	duplicatedSlide := self slideAt: self currentSlideNumber +1.
	slide submorphs withIndexDo: [:each :index | 
		self 
			assert: each bounds 
			equals: (duplicatedSlide submorphs at: index) bounds]