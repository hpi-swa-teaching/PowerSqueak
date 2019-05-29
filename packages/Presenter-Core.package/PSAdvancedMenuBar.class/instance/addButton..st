as yet unclassified
addButton: aSpecification

	| button |
	button := self toolBuilder build: aSpecification.
	self buttons add: button.
	button extent: (self extent scaleBy: aSpecification frame extent).
	button topLeft: self topLeft + (self extent scaleBy: aSpecification frame topLeft).
	self owner addMorph: button.
	
	
	