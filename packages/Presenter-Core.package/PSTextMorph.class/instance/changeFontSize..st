styling
changeFontSize: aNumber

	self addAttribute: (self fontSizeAttribute: aNumber).
	self relayoutText.