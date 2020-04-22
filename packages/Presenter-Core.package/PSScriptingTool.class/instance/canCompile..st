saving
canCompile: aText

	Compiler new 
		compileNoPattern: aText 
		in: self receiver class 
		notifying: self codePane
		ifFail: [^ false].
	^ true
	