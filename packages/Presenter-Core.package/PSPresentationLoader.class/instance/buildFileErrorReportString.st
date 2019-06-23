as yet unclassified
buildFileErrorReportString
	
	| aString |
	(self errorReport at: #files) isEmpty
	ifTrue: [^ ' I loaded all additional files correctly.']
	ifFalse:
		[aString := ''.
		self filesErrorReport keysAndValuesDo: 
			[:key :value | aString := aString, Character cr , key , ' ', value , '.'.
			^ aString]]