accessing
removeSelection
	
	self selection ifNotNil: [self selection removeResizeHandles].
	self selection: nil.
	self model removeSelection.