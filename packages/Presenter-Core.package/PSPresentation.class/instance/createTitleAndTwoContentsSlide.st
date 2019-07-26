default layouts
createTitleAndTwoContentsSlide

	| slide leftContent rightContent |
	slide := self createTitleSlide.
	leftContent := self addPSTextMorphIn: slide at: (0.05 @ 0.2 corner: 0.49 @ 0.95) withSize: 7.
	rightContent := self addPSTextMorphIn: slide at: (0.51 @ 0.2 corner: 0.95 @ 0.95) withSize: 7.
	^ slide