instance creation
on: anObject get: aGetterSelector set: aSetterSelector to: aValue

	^ self new
		target: anObject;
		getterSelector: aGetterSelector;
		setterSelector: aSetterSelector;
		oldValue: (anObject perform: aGetterSelector);
		newValue: aValue;
		yourself