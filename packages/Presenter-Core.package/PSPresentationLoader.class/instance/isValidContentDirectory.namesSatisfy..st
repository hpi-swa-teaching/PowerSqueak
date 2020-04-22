directory checking
isValidContentDirectory: aDirectory namesSatisfy: aBlock

	^ (self isEmptyDirectory: aDirectory) or: [aDirectory directoryNames allSatisfy: 
			[:each | (aBlock value: each) and: [self checkMorphsInDirectory: aDirectory / each]]]