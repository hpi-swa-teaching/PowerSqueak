layout
acceptDroppingMorph: aMorph event: anEvent

	self model miniatureController
		dropSlide: aMorph slide
		onMiniature: self
		at: anEvent position