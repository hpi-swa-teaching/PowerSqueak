default layouts
createTitleAndSubtitleSlide

	| slide title subtitle |
	slide := PSSlide new.
	title := self
		addPSTextMorphIn: slide
		at: (0.05 @ 0.2 corner: 0.95 @ 0.52)
		centeredWithSize: 15.
	subtitle := self
		addPSTextMorphIn: slide
		at:(0.05 @ 0.55 corner: 0.95 @ 0.73)
		centeredWithSize: 8.
	subtitle selectionColor: Color veryDarkGray.
	^ slide