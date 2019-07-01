updating
updateImage 

	self
		newForm: (self slide imageForm scaledToSize: self formSize);
		borderWidth: self borderWidth;
		updateHiddenSlideIconBounds