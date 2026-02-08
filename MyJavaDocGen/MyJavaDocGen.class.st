Class {
	#name : 'MyJavaDocGen',
	#superclass : 'Object',
	#category : 'MyJavaDocGen',
	#package : 'MyJavaDocGen'
}

{ #category : 'accessing' }
MyJavaDocGen >> class: aClass [
	"create a html documentation for the class"
	|stream|.
	stream:= WriteStream on: String new.
	stream nextPutAll: '<html><body><h2>'; 
	nextPutAll: aClass name;
	nextPutAll: '</h2><p>';
	nextPutAll: aClass comment;
	nextPutAll: '</p>'.
	aClass methods do: [ :m | stream nextPutAll: '<h3>'; nextPutAll: m selector asString ;
	nextPutAll: '</h3><p>'; nextPutAll: m comment; nextPutAll: '</p>'].
	stream nextPutAll: '</body></html>'.
	^ stream contents.
]
