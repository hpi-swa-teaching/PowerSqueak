section collapse tests
testTopmostSectionExpandsViaClick

	| section header redClick |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'Top' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'Top'.
	section collapsed: true.
	header := self tool sectionHeaderFor: section.
	redClick := MouseButtonEvent new
		setType: #mouseDown
		position: 0 @ 0
		which: 2r000
		buttons: 4
		hand: self hand
		stamp: Time millisecondClockValue.
	header click: redClick.
	self world doOneCycle.
	self deny: section isCollapsed
