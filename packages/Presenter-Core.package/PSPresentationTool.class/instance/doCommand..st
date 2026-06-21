undo-redo
doCommand: aPSCommand

	| command |
	command := self commandHistory do: aPSCommand.
	self updateUndoRedoButtons.
	^ command