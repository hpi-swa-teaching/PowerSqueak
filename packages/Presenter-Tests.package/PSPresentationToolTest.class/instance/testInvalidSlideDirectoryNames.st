loading tests
testInvalidSlideDirectoryNames

	| invalidSlideDirectoryNames |
	invalidSlideDirectoryNames := {'12slide1' . 'slides1' . 'slide1test' . 'slide' . ''} asOrderedCollection.
	self assert: (invalidSlideDirectoryNames noneSatisfy: [:each | (self tool checkSlideDirectoryName: each)])
	