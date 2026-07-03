text undo tests
testRedoTextFormattingRestoresEmphasis

	| textField textLength |
	textField := self tool contentCreationController newTextField content.
	textField setString: 'Hello'.
	textLength := textField textMorph contents size.

	textField textMorph selectFrom: 1 to: textLength.
	textField selectionEmphasisCode: 0.
	textField textMorph selectFrom: 1 to: textLength.
	textField toggleBold.

	self tool undo.
	self tool redo.
	textField textMorph selectFrom: 1 to: textLength.

	self assert: textField selectionEmphasisCode equals: TextEmphasis bold emphasisCode