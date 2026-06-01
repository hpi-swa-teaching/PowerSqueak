bullets
linesFrom: lineCollection transformedBy: aBlock

	| result |
	result := WriteStream on: String new.
	lineCollection doWithIndex: [:line :index |
		result nextPutAll: (aBlock value: index value: line).
		index < lineCollection size
			ifTrue: [result nextPut: Character cr]].
	^ result contents
