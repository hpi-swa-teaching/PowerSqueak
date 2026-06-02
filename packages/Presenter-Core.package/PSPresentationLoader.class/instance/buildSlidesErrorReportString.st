error reporting
buildSlidesErrorReportString

	| wronglyLoadedSlides report |
	wronglyLoadedSlides := self filterErrorReport: self slideErrors.
	(wronglyLoadedSlides isEmpty and: [
		(self filterErrorReport: self missingMorphErrors) isEmpty])
			ifTrue: [^ self class slidesLoadedSuccessfullyString].
	report := ''.
	wronglyLoadedSlides associationsDo: [:association |
		report := report ,
			(association value = 1
				ifTrue: ['{1}: 1 morph file could not be loaded. \' withCRs
					format: {association key}]
				ifFalse: ['{1}: {2} morph files could not be loaded. \' withCRs
					format: {association key. association value}])].
	^ report