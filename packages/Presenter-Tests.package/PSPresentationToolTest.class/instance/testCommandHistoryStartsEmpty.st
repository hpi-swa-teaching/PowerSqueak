undo redo tests
testCommandHistoryStartsEmpty

	self deny: self tool canUndo.
	self deny: self tool canRedo