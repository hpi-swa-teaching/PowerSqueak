saving
saveSlidesIn: aDirectory
	
	| directory |
	directory := self createDirectory: PSPresentationLoader slidesDirectoryName in: aDirectory. 

	self slides doWithIndex: [:each :index | 
		| directoryName |
		directoryName := 'slide', index asString.
		directory createDirectory: directoryName.
		each saveInDirectory: directory / directoryName ]