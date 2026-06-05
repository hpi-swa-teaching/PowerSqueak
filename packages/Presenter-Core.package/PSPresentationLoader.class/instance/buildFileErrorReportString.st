error reporting
buildFileErrorReportString

	| wronglyLoadedFiles report |
	wronglyLoadedFiles := self filterErrorReport: self fileErrors. 
	wronglyLoadedFiles isEmpty
		ifTrue: [^ self class filesLoadedSuccessfullyString]. 
	report := ''.
	wronglyLoadedFiles associationsDo: [:association |
		report := report ,
			('{1}: metadata.dict is missing or corrupted. Default values were used. \' withCRs
				format: {association key})].
	^ report