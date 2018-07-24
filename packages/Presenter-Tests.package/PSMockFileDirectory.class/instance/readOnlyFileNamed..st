filedirectory compatibility
readOnlyFileNamed: aLocalName

	self assert: (self / aLocalName) exists.
	^ (self / aLocalName) contents