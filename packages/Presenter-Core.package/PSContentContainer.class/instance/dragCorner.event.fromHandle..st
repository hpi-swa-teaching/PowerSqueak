resizing
dragCorner: aSymbol event: event fromHandle: aMorph

	self 
		perform: (self actionForCorner: aSymbol) 
		with: event