slide management
setSnapSizeTo: aNumber

	| snapSize |
	snapSize := aNumber.
	(snapSize inRangeOf: self class minSnapSize and: self class maxSnapSize) 
		ifFalse: [snapSize := snapSize clampLow: self class minSnapSize high: self class maxSnapSize. 
				self inform: 'I set the snap size to: ', snapSize asString].
	self slideContainer snapSize: snapSize