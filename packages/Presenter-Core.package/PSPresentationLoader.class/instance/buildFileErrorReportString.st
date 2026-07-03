error reporting
buildFileErrorReportString

	| wronglyLoadedFiles |
	wronglyLoadedFiles := self filterErrorReport: self fileErrors.
	wronglyLoadedFiles isEmpty
		ifTrue: [^ self class filesLoadedSuccessfullyString].
	^ self
		formatErrorReports: wronglyLoadedFiles
		withString: '{1}: metadata.dict is missing or corrupted. Default values were used. \' withCRs