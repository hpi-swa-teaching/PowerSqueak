collection behaviour
sectionWithDescendants: aPSSlideSection

	^ OrderedCollection new
		add: aPSSlideSection;
		addAll: (self descendantSectionsOf: aPSSlideSection);
		yourself