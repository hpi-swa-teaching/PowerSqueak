logo tests
testEnsureLogoVisibleRestoresDeletedLogo

	| firstLogo |
	PSPresentationTool showLogoInPresentationMode: true.
	self enablePresentationMode.
	firstLogo := self slideContainer logo.
	firstLogo delete.
	self slideContainer ensureLogoVisible.
	self
		deny: self slideContainer logo isNil;
		deny: self slideContainer logo equals: firstLogo
