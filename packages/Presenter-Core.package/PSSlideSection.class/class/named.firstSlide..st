instance creation
named: aString firstSlide: aPSSlide

	^ self new
		name: aString;
		firstSlide: aPSSlide;
		level: 1;
		collapsed: false;
		yourself
