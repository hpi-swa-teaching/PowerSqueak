building
buildEntries

	self addMorphBack: self titleMorph.
	self sortedLayoutNames do: [:aName |
		self addMorphBack:
			(self rowForName: aName layout: (self layoutNamed: aName))].
	self addMorphBack: self cancelMorph