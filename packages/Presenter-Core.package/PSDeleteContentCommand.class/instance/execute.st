execution
execute

	self location ifNil: [self location: (PSContentLocation of: self container)].
	self location removeContainer: self container