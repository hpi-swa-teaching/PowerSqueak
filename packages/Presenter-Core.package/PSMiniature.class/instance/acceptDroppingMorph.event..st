as yet unclassified
acceptDroppingMorph: aMorph event: anEvent
	
	| insertOffset |
	insertOffset := (anEvent position y < self center y)
		ifTrue: [1 negated]
		ifFalse: [0].
	self model addSlide: aMorph slide afterIndex: self slide slideNumber + insertOffset.
	aMorph slide presentation: self slide presentation.
	aMorph abandon.
	