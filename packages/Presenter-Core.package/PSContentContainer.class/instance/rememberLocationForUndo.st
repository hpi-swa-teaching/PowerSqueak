undo-redo
rememberLocationForUndo

	| location |
	location := PSContentLocation of: self.
	self setProperty: #undoStartLocation toValue: location.
	self content setProperty: #undoStartLocation toValue: location.
	self content setProperty: #undoContentContainer toValue: self