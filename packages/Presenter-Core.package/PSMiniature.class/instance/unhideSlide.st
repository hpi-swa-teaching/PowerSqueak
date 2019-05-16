accessing
unhideSlide

	self symbolForHiding ifNotNil: [self symbolForHiding abandon. self symbolForHiding: nil].
	self slide unhideSlide