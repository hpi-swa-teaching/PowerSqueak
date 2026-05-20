collection behaviour
removeSectionNamed: aString

	self sections removeAllSuchThat: [:each | each name = aString]