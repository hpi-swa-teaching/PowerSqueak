shapes
insertShapeNames

	^ Dictionary withAll: {
		'Circle' -> [self newCircleShape].
		'Line' -> [self newLineShape].
		'Rectangle' -> [self newRectangleShape].
		'Rounded rectangle' -> [self newRoundedRectangleShape].
		'Arrow' -> [self newArrowShape]}