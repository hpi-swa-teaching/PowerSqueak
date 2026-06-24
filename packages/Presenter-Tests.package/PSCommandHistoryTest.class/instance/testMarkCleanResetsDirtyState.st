dirty state tests
testMarkCleanResetsDirtyState

	history do: (PSTestCommand named: 'A' log: log).
	history markClean.

	self deny: history isDirty