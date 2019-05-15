accessing
hideSlide

	self 
		symbolForHiding: (ImageMorph new center: self center);
		addMorph: self symbolForHiding.
	self slide hideSlide