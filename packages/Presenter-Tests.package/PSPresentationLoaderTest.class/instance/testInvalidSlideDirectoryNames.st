directory checking tests
testInvalidSlideDirectoryNames

	| invalidSlideDirectoryNames |
	invalidSlideDirectoryNames := {'12slide1' . 'slides1' . 'slide1test' . 'slide' .  'slide-1' . 'layoutNooot' . ''} asOrderedCollection.
	self assert: (invalidSlideDirectoryNames 
		noneSatisfy: [:each | (self loader checkSlideDirectoryName: each)])
	