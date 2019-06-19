accessing
slide
	
	^ self firstOwnerSuchThat: [:owner | owner isPSSlide]
