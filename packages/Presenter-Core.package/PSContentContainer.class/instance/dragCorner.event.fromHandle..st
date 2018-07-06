resizing
dragCorner: index event: evt fromHandle: handle
	
	| layoutFractions |
	layoutFractions := self layoutFractionsOf: evt cursorPoint.
	self isMagnetic ifTrue: [layoutFractions := layoutFractions roundTo: self rasterResolution].
	index caseOf: {	[#topLeft] -> [self extentTopLeft: layoutFractions]. 
					[#topRight] -> [self extentTopRight: layoutFractions].
					[#bottomRight] -> [self extentBottomRight: layoutFractions].
					[#bottomLeft] -> [self extentBottomLeft: layoutFractions]}