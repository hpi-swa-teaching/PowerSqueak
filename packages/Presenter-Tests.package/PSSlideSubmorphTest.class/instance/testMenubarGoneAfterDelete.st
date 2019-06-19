as yet unclassified
testMenubarGoneAfterDelete

	| deleteButton |
	self selectContainer.
	deleteButton := (self tool advancedMenuBarButtons select:
		 [:each | each externalName = (self container deleteData at: #name)]) first.
	deleteButton performAction.
	self assert: self tool advancedMenuBarButtons isEmpty.
	
	
	