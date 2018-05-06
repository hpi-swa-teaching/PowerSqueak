initialize-release
createSlideDummy

	| slideDummy |
	slideDummy := Morph new.
	self addMorph: slideDummy fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)).
	self currentSlide: slideDummy
	