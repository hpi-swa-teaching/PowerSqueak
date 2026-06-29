accessor tests
testPresentationCommandAccessors
	| command |
	command := PSPresentationCommand new.
	command beforeState: #before; afterState: #after; tool: #aTool.
	self assert: command beforeState equals: #before.
	self assert: command afterState equals: #after.
	self assert: command tool equals: #aTool
