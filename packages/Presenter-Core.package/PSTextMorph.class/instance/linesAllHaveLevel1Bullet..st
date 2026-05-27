bullets
linesAllHaveLevel1Bullet: aLineCollection

	^ aLineCollection allSatisfy: [:line |
		self line: line hasBulletPrefix: self class bulletLevel1Prefix]