error reporting
buildSlidesErrorReportString
	
	| wronglyLoadedSlides |
	wronglyLoadedSlides := self filterErrorReport: self slideErrors.
	(wronglyLoadedSlides) isEmpty
	ifTrue: [^ self class slidesLoadedSuccessfullyString]
	ifFalse: 	[^ self formatErrorReports: wronglyLoadedSlides 
								withString: self class slideErrorReportString].
	