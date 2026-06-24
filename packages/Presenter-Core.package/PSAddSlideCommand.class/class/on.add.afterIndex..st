instance creation
on: aPSPresentationTool add: aPSSlide afterIndex: anInteger

	^ self new
		tool: aPSPresentationTool;
		slide: aPSSlide;
		index: anInteger;
		yourself