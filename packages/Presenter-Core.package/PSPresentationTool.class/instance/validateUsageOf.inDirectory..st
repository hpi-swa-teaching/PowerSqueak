as yet unclassified
validateUsageOf: aString inDirectory: aFileDirectory 

	| directory |
	directory := aFileDirectory / aString.
	self warn: self overwriteQuestion 
			trueChoice: [directory recursiveDelete. 
				^ self createDirectory: aString in: aFileDirectory] 
			falseChoice: [^ self getValidPresentationName: aFileDirectory]