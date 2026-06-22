text undo tests
testUndoTextEditRestoresPreviousText

	| textField |
	textField := self tool newTextField content. 
	textField setString: 'Before'.

	textField textEdited: 'After'.
	self assert: textField textMorph contents equals: 'After'.

	self tool undo.

	self assert: textField textMorph contents equals: 'Before'