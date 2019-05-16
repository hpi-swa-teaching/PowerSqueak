accessing
hideSlide

	self symbolForHiding 
		ifNil: [self symbolForHiding: (ImageMorph new center: self center).
				self addMorph: self symbolForHiding].
	self slide hideSlide