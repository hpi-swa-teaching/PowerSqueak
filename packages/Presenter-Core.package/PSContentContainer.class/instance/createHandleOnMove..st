handles
createHandleOnMove: aSymbol

	| handle |
	handle := RectangleMorph new
		extent: self resizeHandleSize;
		color: self handleColor;
		borderWidth: 0;
		yourself.
	handle on: #mouseMove send: aSymbol to: self.
	^ handle