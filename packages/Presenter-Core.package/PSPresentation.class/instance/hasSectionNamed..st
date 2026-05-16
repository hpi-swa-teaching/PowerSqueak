testing
hasSectionNamed: aString

	^ self sections anySatisfy: [:each | each name = aString]