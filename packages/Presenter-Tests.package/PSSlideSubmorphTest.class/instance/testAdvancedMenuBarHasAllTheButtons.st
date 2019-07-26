container tests
testAdvancedMenuBarHasAllTheButtons

	| actionSelectorsWanted actionSelectorsGotten |
	self click: MouseEvent redButton at: self morph center.
	actionSelectorsWanted := self container menuBarItems reject: [:each | each at: #noButton ifAbsent: [false]].
	actionSelectorsWanted := actionSelectorsWanted collect: [:each | each at: #action].
	actionSelectorsGotten := self tool advancedMenuBarButtons collect: [:each | each actionSelector].
	self assert: actionSelectorsWanted asSet equals: actionSelectorsGotten asSet.
	
	
