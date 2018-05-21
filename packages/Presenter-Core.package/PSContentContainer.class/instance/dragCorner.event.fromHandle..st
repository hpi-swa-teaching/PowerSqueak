as yet unclassified
dragCorner: index event: evt fromHandle: handle
	
	index caseOf: {	[1] -> [self extentTopLeft: evt cursorPoint]. 
					[2] -> [self extentTopRight: evt cursorPoint].
					[3] -> [self extentBottomRight: evt cursorPoint].
					[4] -> [self extentBottomLeft: evt cursorPoint]}.
	self resizeChild.
	self placeHandles 