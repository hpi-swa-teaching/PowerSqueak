as yet unclassified
addButton: aSpecification

	| button |
	button := self toolBuilder build: aSpecification.
	self advancedMenuBarButtons add: button