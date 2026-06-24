dirty state tests
testUpdatingPresentationClearsUnsavedChanges

	self tool doCommand: (PSTestCommand named: 'A' log: OrderedCollection new).
	self assert: self tool hasUnsavedChanges.
	self tool updatePresentation: PSPresentation newWithLayouts.
 
	self deny: self tool hasUnsavedChanges