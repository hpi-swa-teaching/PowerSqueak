dropping/grabbing
handleDroppedImage: aFileStream event: anEvent

	|morph|
	morph := SketchMorph fromStream: aFileStream.
	self resizeMorphToFit: morph.
	morph center: anEvent position.
	self acceptDroppingMorph: morph event: anEvent
			