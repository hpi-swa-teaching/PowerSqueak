dropping/grabbing
isImageStream: anItem

	^ (anItem isKindOf: FileStream) and: [self isImageFileName: anItem name]