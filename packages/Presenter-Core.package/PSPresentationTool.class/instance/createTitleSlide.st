layouts
createTitleSlide

	| slide title |
	slide := PSSlide new.
	title := self addPSTextMorphIn: slide at: (0.02 @ 0.02 corner: 0.98 @ 0.17) withSize: 11.
	^ slide