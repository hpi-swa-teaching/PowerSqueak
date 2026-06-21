instance creation
on: aPSPresentationTool move: aPSSlide to: anInteger

	^ self new
		tool: aPSPresentationTool;
		slide: aPSSlide;
		targetIndex: anInteger;
		yourself