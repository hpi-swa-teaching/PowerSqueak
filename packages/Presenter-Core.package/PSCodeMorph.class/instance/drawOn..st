drawing
drawOn: aCanvas
	| panelTop |
	
	self resultText ifNil: [^ self].
	super drawOn: aCanvas.
	panelTop  := self bottom - self resultPanelHeight.
	self drawSeperationLineOn: aCanvas withPanelTop: panelTop;
		drawResultTextOn: aCanvas withPanelTop: panelTop.

