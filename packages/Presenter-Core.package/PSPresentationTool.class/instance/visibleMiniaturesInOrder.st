slide miniatures
visibleMiniaturesInOrder

	^ (self presentation slides
		collect: [:each | self miniatureOf: each])
		select: [:each | each world notNil]