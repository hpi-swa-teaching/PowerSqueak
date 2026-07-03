error reporting
buildMissingMorphErrorReportString

	^ (self filterErrorReport: self missingMorphErrors) associations
		inject: ''
		into: [:report :association |
			report , (association value = 1
				ifTrue: ['{1}: 1 morph file is missing. \' withCRs
					format: {association key}]
				ifFalse: ['{1}: {2} morph files are missing. \' withCRs
					format: {association key. association value}])]