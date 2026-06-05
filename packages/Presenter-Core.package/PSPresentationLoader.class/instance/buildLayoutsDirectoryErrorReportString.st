error reporting
buildLayoutsDirectoryErrorReportString

	self layoutsDirectoryMissing ifTrue:
		[^ 'The layouts directory is missing. Slides were loaded without layouts.'].
	^ ''