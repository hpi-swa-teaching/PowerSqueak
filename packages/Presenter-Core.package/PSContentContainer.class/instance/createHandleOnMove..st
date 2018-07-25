handles
createHandleOnMove: aSymbol

	| handle |
	handle := RectangleMorph new
		extent: self resizeHandleSize;
		color: self handleColor.
	handle on: #mouseMove send: aSymbol to: self.
	^ handle