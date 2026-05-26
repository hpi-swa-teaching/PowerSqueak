section collapse tests
testTopmostSectionTogglesCollapseRepeatedly

	| section header upEvent expected |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'Top' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'Top'.
	header := self tool sectionHeaderFor: section.
	upEvent := MouseButtonEvent new
		setType: #mouseUp
		position: 0 @ 0
		which: 2r000
		buttons: 4
		hand: self hand
		stamp: Time millisecondClockValue.
	expected := true.
	10 timesRepeat: [
		header mouseUp: upEvent.
		self world doOneCycle.
		self assert: section isCollapsed equals: expected.
		expected := expected not]
