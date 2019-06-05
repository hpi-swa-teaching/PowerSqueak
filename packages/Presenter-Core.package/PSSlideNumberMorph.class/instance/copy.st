as yet unclassified
copy

	| myCopy |
	myCopy := self veryDeepCopy.
	myCopy presentation: self presentation.
	^myCopy