layout
acceptDroppingMorph: aMorph event: anEvent
	
	| insertOffset |
	insertOffset := (anEvent position y < self center y)
		ifTrue: [-1]
		ifFalse: [0].
	self model addSlide: aMorph slide afterIndex: self slide slideNumber + insertOffset.
	aMorph slide presentation: self slide presentation.
	aMorph abandon.
	