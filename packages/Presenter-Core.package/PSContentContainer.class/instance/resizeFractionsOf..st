resizing
resizeFractionsOf: anEvent
	
	| layoutFractions |
	layoutFractions := self layoutFractionsOf: anEvent cursorPoint.
	self isMagnetic ifTrue: [layoutFractions := layoutFractions roundTo: self rasterResolution].
	^ layoutFractions