instance creation
styled: aTextStyle sized: aNumber scaledBy: anObject

	^ self new 
		style: aTextStyle;
		basicTextSize: aNumber;
		scalingSource: anObject