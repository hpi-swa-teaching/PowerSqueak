directory checking tests
testValidSlideDirectoryNames

	| validSlideDirectoryNames |
	validSlideDirectoryNames := {'slide1' . 'slide2' . 'slide12' . 'slide5745300' } asOrderedCollection.
	self assert: (validSlideDirectoryNames 
		allSatisfy: [:each | (self loader checkSlideDirectoryName: each)])
	