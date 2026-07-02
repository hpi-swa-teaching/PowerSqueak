layouts
deleteLayoutNamed: aString

	self tool presentation hasMinimumLayouts ifTrue: [^ self].
	self tool presentation removeLayoutNamed: aString 