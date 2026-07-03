error reporting
buildSlidesErrorReportString

	| wronglyLoadedSlides |
	wronglyLoadedSlides := self filterErrorReport: self slideErrors.
	(wronglyLoadedSlides isEmpty and: [
		(self filterErrorReport: self missingMorphErrors) isEmpty])
			ifTrue: [^ self class slidesLoadedSuccessfullyString].
	^ wronglyLoadedSlides associations
		inject: ''
		into: [:report :association |
			report , (association value = 1
				ifTrue: ['{1}: 1 morph file could not be loaded. \' withCRs
					format: {association key}]
				ifFalse: ['{1}: {2} morph files could not be loaded. \' withCRs
					format: {association key. association value}])]