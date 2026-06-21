text undo tests
testRedoTextEditRestoresChangedText

	| textField |
	textField := self tool newTextField content.
	textField setString: 'Before'.

	textField textEdited: 'After'.
	self tool undo.
	self tool redo.

	self assert: textField textMorph contents equals: 'After'