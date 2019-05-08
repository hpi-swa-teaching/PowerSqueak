directory checking
checkLayoutDirectoryName: aDirectoryName

	^ aDirectoryName matchesRegex: self class layoutDirectoryPrefix , '.+'