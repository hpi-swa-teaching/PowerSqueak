undo redo tests
testDoCommandEnablesUndoButton

	| log |
	log := OrderedCollection new.
 
	self tool doCommand: (PSTestCommand named: 'A' log: log).

	self assert: self tool canUndo.
	self deny: self tool canRedo.
	self assert: log asArray equals: #('execute A')