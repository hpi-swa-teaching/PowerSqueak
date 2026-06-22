presentation loading tests
testFormatErrorReportsEmptyIsEmptyString

	self
		assert: ''
		equals: (self loader formatErrorReports: Dictionary new withString: '{1}: {2}')
