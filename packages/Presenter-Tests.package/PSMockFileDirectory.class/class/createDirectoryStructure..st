instance creation
createDirectoryStructure: anAssociation

	| directory |
	directory := self named: anAssociation key.
	directory subdirectories addAll:
		(anAssociation value collect: [:each | self from: each]).
	^ directory