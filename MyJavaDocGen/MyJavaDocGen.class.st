Class {
	#name : 'MyJavaDocGen',
	#superclass : 'Object',
	#category : 'MyJavaDocGen',
	#package : 'MyJavaDocGen'
}

{ #category : 'accessing' }
MyJavaDocGen >> class: aClass [
	^ '<html><body><p>', aClass name, '</p></body></html>'
]
