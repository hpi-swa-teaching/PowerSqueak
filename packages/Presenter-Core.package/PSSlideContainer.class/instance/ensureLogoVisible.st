display
ensureLogoVisible

	PSPresentationTool showLogoInPresentationMode ifFalse: [^ self].
	(self logo notNil and: [self logo world notNil])
		ifTrue: [self positionLogo]
		ifFalse: [self showLogo]
