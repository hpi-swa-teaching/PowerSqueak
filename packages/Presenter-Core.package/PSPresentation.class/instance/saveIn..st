as yet unclassified
saveIn: aDirectory

	"self prepareToBeSaved."
	self saveOnFileNamed: (aDirectory / '.presentation') fullName
	