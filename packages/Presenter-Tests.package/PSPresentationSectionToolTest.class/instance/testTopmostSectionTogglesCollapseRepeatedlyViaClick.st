section collapse tests
testTopmostSectionTogglesCollapseRepeatedlyViaClick

	| section header redClick expected |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'Top' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'Top'.
	header := self tool sectionHeaderFor: section.
	redClick := MouseButtonEvent new
		setType: #mouseDown
		position: 0 @ 0
		which: 2r000
		buttons: 4
		hand: self hand
		stamp: Time millisecondClockValue.
	expected := true.
	10 timesRepeat: [
		header click: redClick.
		self world doOneCycle.
		self assert: section collapsed equals: expected.
		expected := expected not]
