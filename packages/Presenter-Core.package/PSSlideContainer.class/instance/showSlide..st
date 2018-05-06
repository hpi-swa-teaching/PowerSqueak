as yet unclassified
showSlide: aPSSlide

	self currentSlide ifNotNil: [self removeMorph: self currentSlide].
	aPSSlide ifNotNil:
		[self currentSlide: aPSSlide.
		self addMorph: self currentSlide "fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1))"].