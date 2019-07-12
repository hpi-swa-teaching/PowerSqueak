nil
accept: aText

	Compiler new 
		compileNoPattern: aText 
		in: self receiver class 
		notifying: nil 
		ifFail: nil.
	self receiver
		setProperty: (self morphPropertyOf: self selectedMethod)
		toValue: (self convert: aText toBlockWithArguments: (self argumentsOf: self selectedMethod)).
	self changed: #code
	