as yet unclassified
acceptDroppingMorph: aMorph event: anEvent

	self model addSlide: aMorph slide afterIndex: self slide slideNumber.
	self model miniatures at: aMorph slide put: aMorph