context menu tests
testContextMenu

	self assertContextMenuContent: self morph owner equals: (PSContextMenu generateListFrom: self container defaultActions)