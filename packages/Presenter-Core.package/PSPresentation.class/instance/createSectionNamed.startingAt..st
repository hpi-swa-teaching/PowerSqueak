slide sections
createSectionNamed: aString startingAt: anIndex

	self sections at: (self clampSlideNumber: anIndex) put: aString.
