instance creation
on: aPSSlide setColor: aColor

	^ self new
		slide: aPSSlide;
		oldColor: aPSSlide color;
		newColor: aColor;
		yourself