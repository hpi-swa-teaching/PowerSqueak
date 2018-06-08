as yet unclassified
savePresentation

	| directory |
	directory := self defaultDirectory.
	self warn: 'Risky Operation! Do you want to save your image?' trueChoice: [Smalltalk saveSession].
	directory createDirectory: 'slides'.
	directory := directory / 'slides'.
	self slides doWithIndex: [:each :index | 
		| directoryName |
		directoryName := 'slide', index asString.
		directory createDirectory: directoryName.
		each saveInDirectory: directory / directoryName ]