slide management
hideSlideData

	(self currentSlide isHidden)
	ifTrue: [^ {'Unhide slide' . #unhideSlide}]
	ifFalse:[^ {'Hide slide' . #hideSlide}]