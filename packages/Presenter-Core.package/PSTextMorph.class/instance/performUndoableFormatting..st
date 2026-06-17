undo-redo
performUndoableFormatting: aBlock

	self owner ifNil: [^ aBlock value].
	self owner slideContainer ifNil: [^ aBlock value].
	self owner slideContainer model ifNil: [^ aBlock value].

	self owner slideContainer model doCommand:
		(PSFormatTextCommand on: self do: aBlock)