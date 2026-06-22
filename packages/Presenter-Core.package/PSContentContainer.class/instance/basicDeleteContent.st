submorphs-add/remove
basicDeleteContent
	
	self slideContainer ifNotNil: [self slideContainer removeSelection].
	self abandon.
	^ self