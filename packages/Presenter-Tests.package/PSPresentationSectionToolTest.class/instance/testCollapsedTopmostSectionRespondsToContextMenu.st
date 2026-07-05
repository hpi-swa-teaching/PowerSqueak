section collapse tests
testCollapsedTopmostSectionRespondsToContextMenu

	| section header yellowClick menu |
	self createSlide.
	self presentation addSectionNamed: 'Top' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'Top'.
	section collapsed: true.
	self tool miniatureController updateSlideMiniatures.
	self world doOneCycle.
	header := self tool miniatureController slideMiniatures
		detect: [:each | each isPSSectionHeader]
		ifNone: [self error: 'no header rendered for collapsed topmost section'].
	yellowClick := MouseButtonEvent new
		setType: #mouseDown
		position: 0 @ 0
		which: 2r000
		buttons: 2
		hand: self hand
		stamp: Time millisecondClockValue.
	menu := header click: yellowClick.
	self assert: (self collectMenuContentFrom: menu)
		equals: (PSContextMenu generateListFrom: header defaultActions).
	menu abandon
