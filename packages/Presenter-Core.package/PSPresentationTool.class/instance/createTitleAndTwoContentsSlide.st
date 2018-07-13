layouts
createTitleAndTwoContentsSlide

	| slide title leftContent rightContent |
	slide := self createSlide.
	title := self addPSTextMorphIn: slide at: (0.02 @ 0.02 corner: 0.98 @ 0.17) withSize: 11.
	leftContent := self addPSTextMorphIn: slide at: (0.05 @ 0.2 corner: 0.49 @ 0.95) withSize: 7.
	rightContent := self addPSTextMorphIn: slide at: (0.51 @ 0.2 corner: 0.95 @ 0.95) withSize: 7