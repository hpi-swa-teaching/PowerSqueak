collection behaviour
renameLayoutNamed: aString to: anotherString

	| layout |
	aString = anotherString ifTrue: [^ self].
	(self hasLayoutNamed: anotherString)
		ifTrue: [self error: 'Layout name already exists'].
	layout := self slideLayouts at: aString.
	self
		removeLayoutNamed: aString;
		addLayout: layout withName: anotherString
