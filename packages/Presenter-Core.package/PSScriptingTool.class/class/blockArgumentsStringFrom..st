convenience
blockArgumentsStringFrom: aCollection

	^ aCollection inject: '' into: [:aString :each | aString, ' :' , each]