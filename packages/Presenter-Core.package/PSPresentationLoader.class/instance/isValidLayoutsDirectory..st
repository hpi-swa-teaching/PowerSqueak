directory checking
isValidLayoutsDirectory: aDirectory

	^ (self isValidDirectory: aDirectory)
		and: [aDirectory directoryNames allSatisfy:  [:each | 
				self checkMorphsInDirectory: aDirectory / each]]