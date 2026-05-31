drawing
drawOn: aCanvas

	| indent contentLeft textTop |
	indent := (self section level - 1) * self class indentStep.
	aCanvas
		fillRectangle: self bounds
		color: (self class backgroundColorForLevel: self section level).
	aCanvas
		fillRectangle: (self left + indent @ self top
			extent: self class accentWidth @ self height)
		color: self class accentColor.
	contentLeft := self left + indent + self class accentWidth + self class accentGap.
	self drawTriangleOn: aCanvas at: contentLeft.
	textTop := self top + ((self height - self class textFont height) // 2).
	aCanvas
		drawString: self labelText
		at: (contentLeft + self class triangleSize + self class labelGap) @ textTop
		font: self class textFont
		color: self class textColor
