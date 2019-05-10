context menu tests
testContextMenu

	self 
		assertContextMenuContent: self textField owner
		equals: (self textField owner defaultContextMenuContent, self textField customContextMenuContent)