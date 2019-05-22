as yet unclassified
showButtons: aCollection

	self removeAllButtons.
	aCollection do: 
		[:buttonData | self addButton: buttonData].