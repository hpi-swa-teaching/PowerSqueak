model access
setString: aString

	|runs|
	runs := self text runs.
	runs repeatLast: aString size - runs size ifEmpty: [{}].
	self setText: (Text string: aString runs: runs).