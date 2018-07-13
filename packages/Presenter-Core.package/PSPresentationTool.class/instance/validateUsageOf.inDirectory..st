presentation saving
validateUsageOf: aString inDirectory: aFileDirectory 

	| directory |
	directory := aFileDirectory / aString.
	self warn: self overwriteQuestion 
			trueChoice: [^ self clearSubdirectory: aString in: aFileDirectory] 
			falseChoice: [^ self askForPresentationDirectoryIn: aFileDirectory]