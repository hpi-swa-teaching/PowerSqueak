saving test
testRemoveBlockPropertiesStripsOnlyBlocks

	| morph |
	morph := Morph new.
	morph
		setProperty: #customStep toValue: [:aSlide | aSlide];
		setProperty: #acceptRescale toValue: true.
	self saver removeBlockPropertiesFrom: morph.
	self
		deny: (morph hasProperty: #customStep);
		assert: (morph hasProperty: #acceptRescale)