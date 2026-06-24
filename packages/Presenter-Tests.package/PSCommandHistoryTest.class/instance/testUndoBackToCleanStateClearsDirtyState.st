dirty state tests
testUndoBackToCleanStateClearsDirtyState

	history markClean.
	history do: (PSTestCommand named: 'A' log: log).
	history undo.

	self deny: history isDirty 