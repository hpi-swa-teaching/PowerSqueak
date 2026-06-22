export tests
testExportFolderNameReturnsConstant

	self
		assert: self tool exportFolderName
		equals: 'PSPresentationsExports'
