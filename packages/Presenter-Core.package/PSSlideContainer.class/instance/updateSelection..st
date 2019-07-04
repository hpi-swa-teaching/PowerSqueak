selecting
updateSelection: aPSContentContainer
	
	self removeSelection.
	self selection: aPSContentContainer.
	self selection select.
	self model updateSelection: aPSContentContainer.