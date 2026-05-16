collection behaviour
renameSectionNamed: aString to: anotherString

	aString = anotherString ifTrue: [^ self].
	(self hasSectionNamed: anotherString)
		ifTrue: [self error: 'Section name already exists'].
	(self sectionNamed: aString) name: anotherString