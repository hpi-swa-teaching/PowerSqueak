resizing
dragCorner: index event: evt fromHandle: handle
	
	| layoutFractions |
	layoutFractions := self layoutFractionsOf: evt cursorPoint.
	index caseOf: {	[1] -> [self extentTopLeft: layoutFractions]. 
					[2] -> [self extentTopRight: layoutFractions].
					[3] -> [self extentBottomRight: layoutFractions].
					[4] -> [self extentBottomLeft: layoutFractions]}