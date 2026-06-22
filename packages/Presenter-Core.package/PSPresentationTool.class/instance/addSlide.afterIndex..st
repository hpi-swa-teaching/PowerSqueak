slide management
addSlide: aSlide afterIndex: anInteger

	self doCommand:
		(PSAddSlideCommand
			on: self
			add: aSlide
			afterIndex: anInteger).
	^ aSlide