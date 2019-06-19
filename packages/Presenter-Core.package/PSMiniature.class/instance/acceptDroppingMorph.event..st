as yet unclassified
acceptDroppingMorph: aMorph event: anEvent
	
	self model addSlide: aMorph slide afterIndex: self slide slideNumber.
	aMorph slide presentation: self slide presentation.
	aMorph abandon.
	