menu tests
testExportFolderExists
	| folder |
	folder := self tool exportFolder.
	self assert: folder exists.
	folder recursiveDelete
