selecting
removeSelection
	
	self selection unselect.
	self selection: PSNullContentContainer new.
	self model removeSelection.