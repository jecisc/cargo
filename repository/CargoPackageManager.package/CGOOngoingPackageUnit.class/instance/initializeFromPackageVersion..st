initialization
initializeFromPackageVersion: aCGOPackageVersion
	super initialize.
	package := aCGOPackageVersion package.
	description := aCGOPackageVersion copy.
	dependencies := aCGOPackageVersion dependencies collect: #copy as: OrderedCollection.
	self provisions: aCGOPackageVersion provisions.
	platformRequirements := aCGOPackageVersion platformRequirements asOrderedCollection.