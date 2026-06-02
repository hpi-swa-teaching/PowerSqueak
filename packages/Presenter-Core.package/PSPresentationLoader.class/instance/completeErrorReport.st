error reporting
completeErrorReport

	^ self buildSlidesErrorReportString,
		Character cr,
		self buildMissingMorphErrorReportString,
		Character cr,
		self buildFileErrorReportString,
		Character cr,
		self buildLayoutsDirectoryErrorReportString