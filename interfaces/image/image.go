package image

type Object struct {
	Key  string
	Size int64
}

type Objects []Object

type Image interface {
	GetList() Objects
}
