accessing
slide
	
	^ self firstOwnerSuchThat: [:each | each isPSSlide]
