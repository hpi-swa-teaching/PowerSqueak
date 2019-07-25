as yet unclassified
validateUsageOf: aString inDirectory: aFileDirectory 

	self warn: PSPresentationSaver overwriteQuestion 
			trueChoice: [^ self clearSubdirectory: aString in: aFileDirectory] 
			falseChoice: [^ self askForPresentationDirectoryIn: aFileDirectory]