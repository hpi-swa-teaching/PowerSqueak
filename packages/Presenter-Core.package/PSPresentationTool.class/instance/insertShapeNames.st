createSlideContent
insertShapeNames
	
	^ Dictionary withAll: {
			'Circle' -> [self newCircleShape].
			'Line' -> [self newLineShape].
			'Rectangle' -> [self newRectangleShape].
			'Arrow' -> [self newArrowShape]
		}