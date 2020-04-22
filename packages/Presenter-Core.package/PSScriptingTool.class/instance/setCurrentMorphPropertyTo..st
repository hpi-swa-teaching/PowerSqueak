saving
setCurrentMorphPropertyTo: aString

	self receiver
		setProperty: self currentMorphProperty
		toValue: aString.
	self changed: #code
	