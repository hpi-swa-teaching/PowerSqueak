context menu tests
testContextMenu

	self 
		assertContextMenuContent: self textField 
		equals: (self textField owner defaultContextMenuContent, self textField customContextMenuContent)