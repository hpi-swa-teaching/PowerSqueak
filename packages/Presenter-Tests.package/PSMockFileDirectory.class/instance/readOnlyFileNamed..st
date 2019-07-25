filedirectory compatibility
readOnlyFileNamed: aLocalName

	self checkExistance: (self / aLocalName).
	^ (self / aLocalName) contents