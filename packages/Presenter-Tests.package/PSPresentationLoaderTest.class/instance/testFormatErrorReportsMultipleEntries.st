presentation loading tests
testFormatErrorReportsMultipleEntries

	| reports result |
	reports := Dictionary new.
	reports at: 'slide1' put: 'broken'.
	reports at: 'slide2' put: 'missing'.
	result := self loader formatErrorReports: reports withString: '{1}: {2}'.
	self assert: (result includesSubstring: 'slide1: broken').
	self assert: (result includesSubstring: 'slide2: missing')
