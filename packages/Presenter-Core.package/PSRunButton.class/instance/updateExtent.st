sizing
updateExtent

	| side |
	side := (self fontSize * self class extentToFontSizeRatio) rounded.
	self extent: side @ side