undo redo tests
testUpdatingPresentationClearsCommandHistory

	| log |
	log := OrderedCollection new.

	self tool doCommand: (PSTestCommand named: 'A' log: log).
	self assert: self tool canUndo.

	self tool updatePresentation: PSPresentation newWithLayouts.

	self deny: self tool canUndo.
	self deny: self tool canRedo