drawing
drawBackgroundOn: aCanvas
	| bgColor |
	
	bgColor := self hovered
		ifTrue:  [Color r: 0.13 g: 0.65 b: 0.13]
		ifFalse: [Color r: 0.10 g: 0.47 b: 0.10].
	aCanvas fillRectangle: self bounds color: bgColor.
	