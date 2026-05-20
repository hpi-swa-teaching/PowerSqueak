bullets
line: aLine withBulletPrefix: aPrefix

	^ aPrefix , (self lineWithoutBulletPrefix: aLine)
