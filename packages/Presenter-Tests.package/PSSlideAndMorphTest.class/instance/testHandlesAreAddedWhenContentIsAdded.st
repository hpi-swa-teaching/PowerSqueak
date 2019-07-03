dropping tests
testHandlesAreAddedWhenContentIsAdded

	| content |
	content := self slide addContent: self morph.
	self assert: content hasHandles.