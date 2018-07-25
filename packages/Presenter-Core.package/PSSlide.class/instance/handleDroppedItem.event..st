dropping/grabbing
handleDroppedItem: anItem event: anEvent
	
	(self isImageStream: anItem) 
		ifTrue: [self handleDroppedImage: anItem event: anEvent]
		ifFalse: [super handleDroppedItem: anItem event: anEvent]