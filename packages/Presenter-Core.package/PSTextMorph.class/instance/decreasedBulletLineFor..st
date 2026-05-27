bullets
decreasedBulletLineFor: aLine

	| currentPrefix nextPrefix |
	currentPrefix := self bulletPrefixOf: aLine.
	nextPrefix := currentPrefix = self class bulletLevel2Prefix
		ifTrue: [self class bulletLevel1Prefix]
		ifFalse: [''].
	^ self line: aLine withBulletPrefix: nextPrefix
