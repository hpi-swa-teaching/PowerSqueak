instance creation
named: aString

	^ self new
		name: aString;
		isFile: (aString includes: $.);
		yourself