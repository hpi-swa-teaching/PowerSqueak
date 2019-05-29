context menu tests
testContextMenu

	self 
		assertContextMenuContent: self textField owner
		equals: (PSContextMenu generateListFrom: self textField owner defaultActions, self textField customActions)