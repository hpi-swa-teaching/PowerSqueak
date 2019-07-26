filedirectory compatibility
checkExistance: aDirectory
	"Exception is inspired by readOnlyFileNamed: in FileDirectory"
	aDirectory exists
		ifFalse: [((FileDoesNotExistException fileName: aDirectory fullName) readOnly: true) signal]