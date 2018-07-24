resizing
resizeFractionsOf: anEvent
	
	| layoutFractions |
	layoutFractions := self owner layoutFractionsOf: anEvent cursorPoint.
	self isMagnetic 
		ifTrue: [layoutFractions := layoutFractions roundTo: self rasterResolution].
	^ layoutFractions