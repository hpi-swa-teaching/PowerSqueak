default layouts
createTitleAndTwoContentsSlide

	| slide |
	slide := self createTitleSlide.
	self addPSTextMorphIn: slide at: (0.05 @ 0.2 corner: 0.49 @ 0.95) withSize: 7.
	self addPSTextMorphIn: slide at: (0.51 @ 0.2 corner: 0.95 @ 0.95) withSize: 7.
	^ slide