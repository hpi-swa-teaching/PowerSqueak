layouts
createTitleSlide

	| slide title |
	slide := self createSlide.
	title := self addPSTextMorphIn: slide at: (0.02 @ 0.02 corner: 0.98 @ 0.17) withSize: 11