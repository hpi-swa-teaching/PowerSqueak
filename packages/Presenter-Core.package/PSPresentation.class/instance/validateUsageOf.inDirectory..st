saving
validateUsageOf: aString inDirectory: aFileDirectory 

	self warn: self overwriteQuestion 
			trueChoice: [^ self clearSubdirectory: aString in: aFileDirectory] 
			falseChoice: [^ self askForPresentationDirectoryIn: aFileDirectory]