ui
validateUsageOf: aString inDirectory: aFileDirectory 

	self warn: self class overwriteQuestion 
			trueChoice: [^ self clearSubdirectory: aString in: aFileDirectory] 
			falseChoice: [^ self askForPresentationDirectoryIn: aFileDirectory]