display
showLogo

	PSPresentationTool showLogoInPresentationMode ifFalse: [^ self].
	self hideLogo.
	self logo: (PSLogoMorph new
		image: self scaledLogoForm;
		lock;
		yourself).
	self positionLogo.
	self world addMorphFront: self logo
