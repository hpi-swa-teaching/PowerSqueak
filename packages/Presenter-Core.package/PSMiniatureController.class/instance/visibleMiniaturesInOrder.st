miniatures
visibleMiniaturesInOrder

	^ (self tool presentation slides
		collect: [:each | self miniatureOf: each])
		select: [:each | each world notNil]