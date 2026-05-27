drop slot tests
testDropSlotsWithDifferentIndentAreNotEqual

	| slotA slotB |
	slotA := PSDropSlot forIndex: 2 indent: 1 section: nil.
	slotB := PSDropSlot forIndex: 2 indent: 2 section: nil.
	self deny: slotA = slotB
