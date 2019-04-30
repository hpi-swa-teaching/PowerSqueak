default layouts
createTitleAndContentSlide

	| slide title content |
	slide := PSSlide new.
	title := self addPSTextMorphIn: slide at: (0.02 @ 0.02 corner: 0.98 @ 0.17) withSize: 11.
	content := self addPSTextMorphIn: slide at: (0.05 @ 0.2 corner: 0.95 @ 0.95) withSize: 7.
	^ slide
	