resizing
resizeFractionsOf: anEvent
	
	| layoutFractions |
	layoutFractions := self owner layoutFractionsOf: anEvent cursorPoint.
	self isMagnetic 
		ifTrue: [layoutFractions := self magnetizeLayoutFractions: layoutFractions].
	^ layoutFractions