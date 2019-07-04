event handling
ifAnyHandleContains: aPoint do: aBlock ifNone: anotherBlock

	self resizeHandles do: [:each |
		(each containsPoint: aPoint)
			ifTrue: [^ aBlock value: each]].
	^ anotherBlock value