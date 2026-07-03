shapes
newArrowShape

	| scale |
	scale := 10.
	^ self addShape: (PolygonMorph new
		setVertices: {0 @ 1. 6 @ 1. 6 @ 2. 8 @ 0. 6 @ -2. 6 @ -1. 0 @ -1} * scale;
		yourself)