saving
saveLayoutsIn: aDirectory
	
	| directory |
	directory := self createDirectory: PSPresentationLoader layoutsDirectoryName in: aDirectory. 

	self slideLayouts keysAndValuesDo: [:key :value | 
		| directoryName |
		directoryName := PSPresentationLoader layoutDirectoryPrefix, key asString.
		directory createDirectory: directoryName.
		value saveIn: directory / directoryName ]