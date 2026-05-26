section collapse tests
testCollapsedTopmostSectionRespondsToContextMenu

	| section header yellowDown menuMorphs |
	self createSlide.
	self presentation addSectionNamed: 'Top' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'Top'.
	section collapsed: true.
	self tool updateSlideMiniatures.
	self world doOneCycle.
	header := self tool slideMiniatures
		detect: [:each | each isPSSectionHeader]
		ifNone: [self error: 'no header rendered for collapsed topmost section'].
	yellowDown := MouseButtonEvent new
		setType: #mouseDown
		position: 0 @ 0
		which: 2r000
		buttons: 2
		hand: self hand
		stamp: Time millisecondClockValue.
	header mouseDown: yellowDown.
	self world doOneCycle.
	menuMorphs := self world submorphs
		select: [:each | each isKindOf: MenuMorph].
	self deny: menuMorphs isEmpty
