selecting
updateSelection: aPSContentContainer
	
	self removeSelection.
	self selection: aPSContentContainer.
	self selection addResizeHandles.
	self model updateSelection: aPSContentContainer.