advanced menu bar
showButtons: aCollection

	self removeAllButtons.
	aCollection do: 
		[:buttonData | self addButton: buttonData].