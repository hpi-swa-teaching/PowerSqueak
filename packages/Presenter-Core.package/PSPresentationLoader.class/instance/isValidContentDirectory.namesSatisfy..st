directory checking
isValidContentDirectory: aDirectory namesSatisfy: aBlock

	^ (self isValidDirectory: aDirectory) and: [aDirectory directoryNames allSatisfy: 
			[:each | (aBlock value: each) and: [self checkMorphsInDirectory: aDirectory / each]]]