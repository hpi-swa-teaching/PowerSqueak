display
positionLogo

	self logo ifNil: [^ self].
	self logo position:
		self bottomRight - self logo extent - self logoMargin

