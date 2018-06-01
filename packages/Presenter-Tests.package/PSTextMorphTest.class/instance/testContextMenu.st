context menu tests
testContextMenu

	self testContextMenuContent: self textField equals: 
		(self textField owner defaultContextMenuContent, self textField customContextMenuContent)