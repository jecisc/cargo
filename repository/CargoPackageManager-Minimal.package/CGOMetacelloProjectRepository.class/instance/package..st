accessing
package: aPackageName
	^ packageVersions 
		detect: [ :each | each packageName = aPackageName ]
		ifNone: [ CGOPackageNotFoundError signal: aPackageName ]