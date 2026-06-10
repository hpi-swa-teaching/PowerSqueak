drawing
drawSeperationLineOn: aCanvas withPanelTop: aNumber

	aCanvas fillRectangle:
		(self left @ aNumber corner: 
			self right @ (aNumber +1))
		color: (Color gray: 0.35).