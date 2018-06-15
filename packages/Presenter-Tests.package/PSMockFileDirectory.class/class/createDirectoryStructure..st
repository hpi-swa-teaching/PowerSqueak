instance creation
createDirectoryStructure: anAssociation

	| directory |
	directory := self named: anAssociation key.
	anAssociation value do: [:each |
		directory subdirectories add: (self from: each) ].
	^ directory