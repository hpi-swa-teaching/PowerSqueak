menu tests
testExportFolderExists

	| folder |
	folder := self tool exportController exportFolder.
	self assert: folder exists.
	folder recursiveDelete