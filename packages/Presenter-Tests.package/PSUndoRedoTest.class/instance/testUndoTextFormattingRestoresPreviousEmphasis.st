text undo tests
testUndoTextFormattingRestoresPreviousEmphasis

	| textField textLength |
	textField := self tool contentCreationController newTextField content.
	textField setString: 'Hello'.
	textLength := textField textMorph contents size.

	textField textMorph selectFrom: 1 to: textLength.
	textField selectionEmphasisCode: 0.
	textField textMorph selectFrom: 1 to: textLength.
	textField toggleBold.
	textField textMorph selectFrom: 1 to: textLength.
	self assert: textField selectionEmphasisCode equals: TextEmphasis bold emphasisCode.

	self tool undo.
	textField textMorph selectFrom: 1 to: textLength.

	self assert: textField selectionEmphasisCode equals: 0