collection behaviour
outdentSection: aPSSlideSection

	| affected |
	affected := OrderedCollection new
		add: aPSSlideSection;
		addAll: (self descendantSectionsOf: aPSSlideSection);
		yourself.
	affected do: [:each | each level: (each level - 1 max: 1)].
	self normalizeSectionLevels
