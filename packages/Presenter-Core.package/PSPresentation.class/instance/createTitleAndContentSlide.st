default layouts
createTitleAndContentSlide

	| slide |
	slide := self createTitleSlide.
	self addPSTextMorphIn: slide at: (0.05 @ 0.2 corner: 0.95 @ 0.95) withSize: 7.
	^ slide