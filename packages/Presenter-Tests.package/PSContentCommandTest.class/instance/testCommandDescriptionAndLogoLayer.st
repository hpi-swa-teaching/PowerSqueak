accessor tests
testCommandDescriptionAndLogoLayer
	| command |
	command := PSAddContentCommand new.
	self assert: command description equals: command class name.
	self assert: PSLogoMorph new morphicLayerNumber equals: 1
