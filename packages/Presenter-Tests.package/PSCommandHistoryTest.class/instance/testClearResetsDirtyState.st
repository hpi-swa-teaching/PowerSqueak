dirty state tests
testClearResetsDirtyState

	history do: (PSTestCommand named: 'A' log: log).
	history clear.

	self deny: history isDirty