as yet unclassified
savePresentation

	| directory |
	directory := self defaultDirectory.
	self warn: self riskyOperationMessage trueChoice: [].
	
	directory := self getValidPresentationName: directory. 
	directory := self createDirectory: 'slides' in: directory. 

	self slides doWithIndex: [:each :index | 
		| directoryName |
		directoryName := 'slide', index asString.
		directory createDirectory: directoryName.
		each saveInDirectory: directory / directoryName ]