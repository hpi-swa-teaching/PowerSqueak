layouts
deleteLayoutNamed: aString

	self presentation hasMinimumLayouts ifTrue: [^ self].
	self presentation removeLayoutNamed: aString