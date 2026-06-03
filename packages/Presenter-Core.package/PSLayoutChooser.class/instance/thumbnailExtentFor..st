building
thumbnailExtentFor: aLayout

	^ self class thumbnailWidth
		@ (self class thumbnailWidth * aLayout class sideRatio)