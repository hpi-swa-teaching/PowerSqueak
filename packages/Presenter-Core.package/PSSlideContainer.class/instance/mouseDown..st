as yet unclassified
mouseDown: anEvent
	
	self halt.

	super mouseDown: anEvent.
	self selection: (self morphToGrab: anEvent).
	"self currentSlide submorphsDo: 
		[:morphy | (morphy containsPoint: anEvent cursorPoint) 
			ifTrue: [^ morphy mouseDown: anEvent]]"