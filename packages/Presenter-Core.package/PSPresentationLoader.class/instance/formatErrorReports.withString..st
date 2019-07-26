error reporting
formatErrorReports: aDictionary withString: formatString

	^ aDictionary associations inject: '' into:
		[:aString :anAssociation | aString , (formatString format: {anAssociation key . anAssociation value})]

	