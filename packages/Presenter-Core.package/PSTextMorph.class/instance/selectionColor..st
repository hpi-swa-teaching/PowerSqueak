styling
selectionColor: aColor
	
	self 
		selectionAddAttribute: (TextColor color: aColor)
		onNoSelection: [self textMorph textColor: aColor]
