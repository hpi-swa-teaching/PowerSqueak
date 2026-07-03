error reporting
formatErrorReports: aDictionary withString: formatString

	^ aDictionary associations
		inject: ''
		into: [:report :association |
			report , (formatString format: {association key. association value})]