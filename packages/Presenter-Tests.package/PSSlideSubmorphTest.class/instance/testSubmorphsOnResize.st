submorph tests
testSubmorphsOnResize

	self slide acceptDroppingMorph: self morph event: nil.
	
	self assertIsConstantOnWindowResize: [self morph extent x / self morph extent y].
	self assertIsConstantOnWindowResize: [self morph extent / self slide extent].
	self assertIsConstantOnWindowResize: [self morph position - self slide position / self slide extent] 