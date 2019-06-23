saving
saveSlidesIn: aDirectory
	
	| directory |
	directory := self createDirectory: PSPresentationLoader slidesDirectoryName in: aDirectory. 

	self slides doWithIndex: [:each :index | 
		| directoryName |
		directoryName := PSPresentationLoader slideDirectoryPrefix, index asString.
		directory createDirectory: directoryName.
		each saveIn: directory / directoryName ]