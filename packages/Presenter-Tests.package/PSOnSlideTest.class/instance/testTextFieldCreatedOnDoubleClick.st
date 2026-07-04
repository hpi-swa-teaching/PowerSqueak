event tests
testTextFieldCreatedOnDoubleClick

	| oldSubmorphs addedTextFields event |
	oldSubmorphs := self submorphs.
	event := self mouse: MouseEvent redButton downAt: self slide center.

	self slide doubleClick: event.

	addedTextFields := (self submorphs difference: oldSubmorphs)
		select: [:each |
			(each isKindOf: PSContentContainer)
				and: [each content isKindOf: PSTextMorph]].

	self assert: addedTextFields size equals: 1