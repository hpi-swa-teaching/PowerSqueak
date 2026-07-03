drawing
drawBackgroundOn: aCanvas

	| backgroundColor |
	backgroundColor := self hovered
		ifTrue: [self class hoveredBackgroundColor]
		ifFalse: [self class defaultBackgroundColor].
	aCanvas fillRectangle: self bounds color: backgroundColor