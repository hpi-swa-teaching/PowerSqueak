accessing
removeSelection
	
	self selection removeResizeHandles.
	self selection: PSNullContentContainer new.
	self model removeSelection.