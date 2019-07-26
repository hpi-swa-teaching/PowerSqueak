handles
setCursorFor: aSymbol

	Cursor currentCursor: (Cursor perform: ('resize', aSymbol capitalized) asSymbol)