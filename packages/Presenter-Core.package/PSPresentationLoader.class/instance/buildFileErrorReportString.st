error reporting
buildFileErrorReportString
	
	| wronglyLoadedFiles |
	wronglyLoadedFiles := self filterErrorReport: self fileErrors.
	wronglyLoadedFiles isEmpty
		ifTrue: [^ self class filesLoadedSuccessfullyString]
		ifFalse: [^ self formatErrorReports: wronglyLoadedFiles 
								withString: self class fileErrorReportString]