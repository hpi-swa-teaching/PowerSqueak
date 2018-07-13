handles
createHandleOnMove: aSymbol

	| handle |
	handle := RectangleMorph new
		extent: self resizeHandleSize;
		color: Color black.
	handle on: #mouseMove send: aSymbol to: self.
	^ handle