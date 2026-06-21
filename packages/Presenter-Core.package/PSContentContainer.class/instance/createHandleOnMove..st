handles
createHandleOnMove: aSymbol

	| handle |
	handle := RectangleMorph new
		extent: self resizeHandleSize;
		color: self handleColor;
		borderWidth: 0;
		yourself.
	handle
		on: #mouseDown send: #startResizeUndo: to: self;
		on: #mouseMove send: aSymbol to: self;
		on: #mouseUp send: #finishResizeUndo: to: self.
	^ handle