testing support
loadedContentAfterSaving: aMorph

	| container fileName loaded readStream writeStream |
	fileName := 'PSPresentationLoaderTest.morph'.
	[
		(FileDirectory default fileExists: fileName)
			ifTrue: [FileDirectory default deleteFileNamed: fileName].

		container := PSContentContainer new
			setContent: aMorph;
			yourself.

		writeStream := FileStream newFileNamed: fileName.
		[writeStream fileOutClass: nil andObject: container]
			ensure: [writeStream close].

		readStream := FileStream readOnlyFileNamed: fileName.
		[loaded := PSPresentationLoader new
			world: self world;
			loadMorphFromStream: readStream]
			ensure: [readStream close].

		self assert: loaded notNil.
		^ loaded content]
		ensure: [
			(FileDirectory default fileExists: fileName)
				ifTrue: [FileDirectory default deleteFileNamed: fileName]]