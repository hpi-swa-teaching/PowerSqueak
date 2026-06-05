error reporting
buildMissingMorphErrorReportString

	| report | 
	report := ''.
	(self filterErrorReport: self missingMorphErrors) associationsDo:
		[:association |
		report := report ,
			(association value = 1
				ifTrue: ['{1}: 1 morph file is missing. \' withCRs
					format: {association key}]
				ifFalse: ['{1}: {2} morph files are missing. \' withCRs
					format: {association key. association value}])].
	^ report