file tests
testExportFolderNameReturnsConstant

	self
		assert: self tool exportController exportFolderName
		equals: 'PSPresentationsExports'