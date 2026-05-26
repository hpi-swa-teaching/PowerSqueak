drop slot tests
testDropSlotsWithSameFieldsAreEqual

	| section slotA slotB |
	self createSlide.
	self presentation addSectionNamed: 'X' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'X'.
	slotA := PSDropSlot forIndex: 2 indent: 1 section: section.
	slotB := PSDropSlot forIndex: 2 indent: 1 section: section.
	self
		assert: slotA equals: slotB;
		assert: slotA hash equals: slotB hash
