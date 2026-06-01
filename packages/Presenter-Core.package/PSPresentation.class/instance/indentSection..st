collection behaviour
indentSection: aPSSlideSection

	| affected |
	affected := OrderedCollection new
		add: aPSSlideSection;
		addAll: (self descendantSectionsOf: aPSSlideSection);
		yourself.
	affected do: [:each | each level: each level + 1]