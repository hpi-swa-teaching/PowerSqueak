context menu tests
testContextMenu

	self slide addContent: self morph.
	self testContextMenuContent: self morph equals: self morph owner defaultContextMenuContent