snap tests
testSnapSizeDialogStringMentionsBounds

	self assert: (self tool snapSizeDialogString includesSubstring: 'snap size')
