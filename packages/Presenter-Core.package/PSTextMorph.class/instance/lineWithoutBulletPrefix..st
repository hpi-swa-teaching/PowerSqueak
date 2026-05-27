bullets
lineWithoutBulletPrefix: aLine

	| existingPrefix |
	existingPrefix := self bulletPrefixOf: aLine.
	^ aLine copyFrom: existingPrefix size + 1 to: aLine size
