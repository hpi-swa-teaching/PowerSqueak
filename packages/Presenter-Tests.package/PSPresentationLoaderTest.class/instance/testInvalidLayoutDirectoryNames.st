directory checking tests
testInvalidLayoutDirectoryNames

	| invalidSlideDirectoryNames |
	invalidSlideDirectoryNames := {'12layout1' . 'LAYOUT' . 'layout' . 'slide'. 'slide1'} asOrderedCollection.
	self assert: (invalidSlideDirectoryNames 
		noneSatisfy: [:each | (self loader checkLayoutDirectoryName: each)])
	