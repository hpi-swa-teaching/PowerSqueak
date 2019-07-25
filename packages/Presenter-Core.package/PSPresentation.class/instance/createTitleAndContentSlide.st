default layouts
createTitleAndContentSlide

	| slide content |
	slide := self createTitleSlide.
	content := self addPSTextMorphIn: slide at: (0.05 @ 0.2 corner: 0.95 @ 0.95) withSize: 7.
	^ slide
	