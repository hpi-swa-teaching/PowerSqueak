slide loading
addSlidesFrom: aDirectory
	
	self sortedSubdirectoriesOf: aDirectory / self slidesDirectoryName
		do:	[:each | self addSlideFromDirectory: each]