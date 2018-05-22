submorph tests
testSubmorphsOnResize

	self slide acceptDroppingMorph: self morph event: nil.
	
	self assertIsNearlyConstantOnWindowResize: [self morph extent x / self morph extent y].
	self assertDeviatesLessThan: 0.05@0.05  onWindowResize: [self morph extent / self slide extent].
	self assertDeviatesLessThan: 0.2@0.2  onWindowResize:  [self morph position - self slide position / self slide extent]