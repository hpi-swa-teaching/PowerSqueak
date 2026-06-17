undo-redo
clearMoveUndoPropertiesFrom: aMorph

	aMorph setProperty: #undoStartLocation toValue: nil.
	aMorph setProperty: #undoContentContainer toValue: nil