bullets
bulletPrefixOf: aLine

	^ (self class bulletPrefixes
		detect: [:prefix | self line: aLine hasBulletPrefix: prefix]
		ifNone: ['']) 