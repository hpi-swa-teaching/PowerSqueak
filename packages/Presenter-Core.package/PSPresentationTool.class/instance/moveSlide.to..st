slide management
moveSlide: aSlide to: aNumber

	self doCommand:
		(PSMoveSlideCommand
			on: self
			move: aSlide
			to: aNumber).
	^ aSlide