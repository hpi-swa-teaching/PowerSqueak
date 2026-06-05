presentation saving
prepareToBeSaved 

	super prepareToBeSaved.
	self setModel: 0   			"0 avoids a MorphicModel model that cannot be loaded"