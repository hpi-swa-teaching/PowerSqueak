handles
createHandleOnMove: aSymbol

	| handle |
	handle := RectangleMorph new
		extent: self resizeHandleSize;
		color: self handleColor;
		yourself.
	handle on: #mouseMove send: aSymbol to: self.
	^ handle