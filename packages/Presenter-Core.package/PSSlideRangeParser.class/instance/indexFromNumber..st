parsing
indexFromNumber: aString

	| index |
	index := self numberFrom: aString.
	self validateInBounds: index.
	^ index
