accessing
updateSelection: aPSContentContainer
	
	self removeSelection.
	self selection: aPSContentContainer.
	self selection addResizeHandles