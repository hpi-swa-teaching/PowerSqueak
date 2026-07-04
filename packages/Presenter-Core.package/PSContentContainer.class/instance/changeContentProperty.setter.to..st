undo-redo
changeContentProperty: aGetterSelector setter: aSetterSelector to: aValue

	(self content perform: aGetterSelector) = aValue ifTrue: [^ self].
	self slideContainer ifNil: [^ self content perform: aSetterSelector with: aValue].
	self slideContainer model ifNil: [^ self content perform: aSetterSelector with: aValue].
	self slideContainer model doCommand:
		(PSChangeMorphPropertyCommand
			on: self content
			get: aGetterSelector
			set: aSetterSelector
			to: aValue)