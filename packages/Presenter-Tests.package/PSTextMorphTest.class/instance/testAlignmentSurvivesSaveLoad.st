serialization tests
testAlignmentSurvivesSaveLoad

	| alignment fileName loadedAlignment loadedText readStream writeStream |
	fileName := 'PSTextMorphAlignmentTest-', Time millisecondClockValue printString, '.morph'.
	alignment := TextAlignment rightFlush.
	self textField alignRight.
	[
		writeStream := FileStream newFileNamed: fileName.
		[writeStream fileOutClass: nil andObject: self textField textMorph text]
			ensure: [writeStream close].

		readStream := FileStream readOnlyFileNamed: fileName.
		[loadedText := readStream fileInObjectAndCode]
			ensure: [readStream close].

		loadedAlignment := (loadedText attributesAt: 1)
			detect: [:attribute | attribute class = TextAlignment]
			ifNone: [].

		self assert: loadedAlignment equals: alignment]
		ensure: [
			(FileDirectory default fileExists: fileName)
				ifTrue: [FileDirectory default deleteFileNamed: fileName]]
