presentation saving
prepareToBeSaved 

	super prepareToBeSaved.
	self setModel: 0   			"we needed a value, otherwise we get a MorphicModel1 as model and cannot load the presentation"