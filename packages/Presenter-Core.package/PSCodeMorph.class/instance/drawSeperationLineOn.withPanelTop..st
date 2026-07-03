drawing
drawSeperationLineOn: aCanvas withPanelTop: aNumber

	aCanvas
		fillRectangle: (self left @ aNumber
			corner: self right @ (aNumber + self class separationLineHeight))
		color: self class separationLineColor