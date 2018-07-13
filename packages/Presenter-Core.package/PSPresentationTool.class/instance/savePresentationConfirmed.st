presentation saving
savePresentationConfirmed

	| directory |
	directory := self defaultDirectory.
	
	directory := self askForPresentationDirectoryIn: directory.
	directory ifNil: [^ self].
	directory := self createDirectory: 'slides' in: directory. 

	self slides doWithIndex: [:each :index | 
		| directoryName |
		directoryName := 'slide', index asString.
		directory createDirectory: directoryName.
		each saveInDirectory: directory / directoryName ]