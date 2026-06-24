logo tests
testShowLogoIsIdempotent

	PSPresentationTool showLogoInPresentationMode: true.
	self enablePresentationMode.
	self slideContainer showLogo.
	self assert:
		(self world submorphs count: [:each | each isKindOf: PSLogoMorph])
		equals: 1
