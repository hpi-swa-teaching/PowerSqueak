collection behaviour
addLayout: aLayout withName: aString

	(self hasLayoutNamed: aString)
		ifTrue: [self error: 'Layout name already exists'].
	self slideLayouts at: aString put: aLayout