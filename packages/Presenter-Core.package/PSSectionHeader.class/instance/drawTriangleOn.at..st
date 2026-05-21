drawing
drawTriangleOn: aCanvas at: aLeft

	| box vertices |
	box := aLeft @ (self top + ((self height - self class triangleSize) // 2))
		extent: self class triangleSize @ self class triangleSize.
	vertices := self section isCollapsed
		ifTrue: [{box topLeft. box bottomLeft. box rightCenter}]
		ifFalse: [{box topLeft. box topRight. box bottomCenter}].
	aCanvas drawPolygon: vertices fillStyle: self class triangleColor
