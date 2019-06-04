as yet unclassified
testMenubarGoneAfterDelete

	| deleteButton |
	self click: MouseEvent redButton at: self morph center.
	self assert: self tool advancedMenuBarButtons isEmpty not.
	deleteButton := (self tool advancedMenuBarButtons select:
		 [:each | each externalName = (self container deleteData at: #name)]) first.
	deleteButton performAction.
	self assert: self tool advancedMenuBarButtons isEmpty.
	
	
	