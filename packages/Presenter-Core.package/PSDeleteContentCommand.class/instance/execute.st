execution
execute

	location ifNil: [location := PSContentLocation of: container].
	location removeContainer: container