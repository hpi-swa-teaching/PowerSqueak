as yet unclassified
handleDroppedItem: anItem event: anEvent
	
	((anItem isKindOf: FileStream) and: [self isImageFileName: anItem name]) 
		ifTrue: [self handleDroppedImage: anItem event: anEvent]
		ifFalse: [super handleDroppedItem: anItem event: anEvent]