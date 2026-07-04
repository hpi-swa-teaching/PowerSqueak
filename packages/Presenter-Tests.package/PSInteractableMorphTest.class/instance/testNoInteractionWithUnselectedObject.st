interaction tests
testNoInteractionWithUnselectedObject

	| event |
	self slideContainer removeSelection.
	self deny: self container isInteractive.

	event := self mouse: MouseEvent redButton downAt: self morph center.
	self container filterEvent: event for: self morph.

	self deny: self interacted.
	self assert: self slideContainer selection equals: self container.
	self assert: self container isInteractive