loading tests
testCanLoadEmptySlide

	| directory |
	directory := PSMockFileDirectory named: 'slide'.
	self assert: (self tool loadSlideFromDirectory: directory) equals: 0 description: 'Loading an empty slide should returns 0 morph errors'