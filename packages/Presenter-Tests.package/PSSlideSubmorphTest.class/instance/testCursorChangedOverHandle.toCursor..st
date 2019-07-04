container tests
testCursorChangedOverHandle: aSymbol toCursor: aCursor
	
	| handlePosition |
	self selectContainer.
	handlePosition := (self container resizeHandles at: aSymbol) center.
	self click: MouseEvent redButton at: handlePosition.
	
	self assert: Cursor currentCursor equals: aCursor