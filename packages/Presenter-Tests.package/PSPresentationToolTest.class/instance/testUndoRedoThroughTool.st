undo redo tests
testUndoRedoThroughTool

	| log |
	log := OrderedCollection new.

	self tool doCommand: (PSTestCommand named: 'A' log: log).
	self tool undo.
	self tool redo.

	self assert: log asArray equals: #('execute A' 'unexecute A' 'execute A')