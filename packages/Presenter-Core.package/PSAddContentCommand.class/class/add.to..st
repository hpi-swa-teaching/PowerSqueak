instance creation
add: aMorph to: aPSSlide

	^ self new
		slide: aPSSlide;
		morph: aMorph;
		containerCreated: false;
		yourself