layout
layout: morph in: newBounds

	| slide newExtent proposedExtent |
	super layout: morph in: newBounds.

	slide := morph firstSubmorph.
	proposedExtent := newBounds extent.	
	proposedExtent y / proposedExtent x > slide sideRatio
		ifTrue: [newExtent := proposedExtent x @ (proposedExtent x * slide sideRatio)]
		ifFalse: [newExtent := proposedExtent y / slide sideRatio @ proposedExtent y].

	slide 
		extent: newExtent; 
		center: morph center