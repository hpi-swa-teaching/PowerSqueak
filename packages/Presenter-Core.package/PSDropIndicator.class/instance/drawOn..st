drawing
drawOn: aCanvas

	| offset |
	offset := self indent * PSSectionHeader indentStep.
	aCanvas
		fillRectangle: (self left + offset @ self top
			corner: self right @ self bottom)
		color: self class defaultColor
