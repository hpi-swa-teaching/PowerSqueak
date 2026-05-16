accessing
sectionNamed: aString

	^ self sections detect: [:each | each name = aString]