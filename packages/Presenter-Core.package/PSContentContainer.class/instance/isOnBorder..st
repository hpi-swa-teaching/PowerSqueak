geometry
isOnBorder: aPoint

	^ (self containsPoint: aPoint) and: [((self bounds insetBy: self class borderWidth) containsPoint: aPoint) not]
	 