nil
accept: aText

	| blockText |
	blockText := self convert: aText
		toBlockWithArguments: (self argumentsOf: self selectedMethod).
	Compiler new 
		compileNoPattern: blockText 
		in: self receiver class 
		notifying: self codePane
		ifFail: [^ self].
	self receiver
		setProperty: self currentMorphProperty
		toValue: blockText.
	self changed: #code
	