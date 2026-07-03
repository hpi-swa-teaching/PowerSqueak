error reporting
completeErrorReport

	^ String streamContents: [:stream |
		stream
			nextPutAll: self buildSlidesErrorReportString;
			cr;
			nextPutAll: self buildMissingMorphErrorReportString;
			cr;
			nextPutAll: self buildFileErrorReportString;
			cr;
			nextPutAll: self buildLayoutsDirectoryErrorReportString]