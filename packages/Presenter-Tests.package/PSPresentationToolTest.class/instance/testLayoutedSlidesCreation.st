slide creation tests
testLayoutedSlidesCreation
	"Assure that layout creation does not throw an error."
	self tool slideLayoutNames values do: [:each | each value].
	self assert: self slideCount = (self tool slideLayoutNames size + 1)