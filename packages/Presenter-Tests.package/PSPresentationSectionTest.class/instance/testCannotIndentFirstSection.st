section level tests
testCannotIndentFirstSection

	| first second |
	self createSlide.
	self presentation
		addSectionNamed: 'First' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Second' firstSlide: (self presentation slideAt: 2).
	first := self presentation sectionNamed: 'First'.
	second := self presentation sectionNamed: 'Second'.
	self deny: (self presentation canIndentSection: first).
	self assert: (self presentation canIndentSection: second)
