dirty state tests
testRedoAfterCleanUndoMakesHistoryDirtyAgain

	history markClean.
	history do: (PSTestCommand named: 'A' log: log).
	history undo.
	history redo.

	self assert: history isDirty