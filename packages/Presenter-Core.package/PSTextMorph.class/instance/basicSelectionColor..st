styling
basicSelectionColor: aColor
	
	self 
		selectionAddAttribute: (TextColor color: aColor)
		onNoSelection: [self textMorph textColor: aColor].	
	self textMorph changed