section collapse tests
testExpandSectionsContainingSlideExpandsCoveringSection

	| section |
	self presentation addSectionNamed: 'S' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'S'.
	section collapsed: true.
	self presentation expandSectionsContainingSlideAt: 1.
	self deny: section collapsed
