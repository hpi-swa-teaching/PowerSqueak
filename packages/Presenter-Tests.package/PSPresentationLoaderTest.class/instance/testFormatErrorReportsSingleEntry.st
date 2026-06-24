presentation loading tests
testFormatErrorReportsSingleEntry

	| reports |
	reports := Dictionary new.
	reports at: 'slide1' put: 'broken'.
	self
		assert: 'slide1: broken'
		equals: (self loader formatErrorReports: reports withString: '{1}: {2}')
