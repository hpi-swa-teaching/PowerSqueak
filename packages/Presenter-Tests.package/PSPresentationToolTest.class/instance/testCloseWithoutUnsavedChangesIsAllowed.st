dirty state tests
testCloseWithoutUnsavedChangesIsAllowed

	self deny: self tool hasUnsavedChanges.
	self assert: self tool confirmCloseWithUnsavedChanges