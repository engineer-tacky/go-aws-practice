package main

import (
	"strconv"

	"github.com/engineer-tacky/go-aws-practice/internal/image"
	"github.com/engineer-tacky/go-aws-practice/internal/notify"
)

func main() {
	list := image.GetList()
	s := ""
	for _, obj := range list {
		// 全て文字列にして変数に格納
		s += obj.Key + "\n"
		s += strconv.Itoa(int(obj.Size)) + "\n"
	}
	notify.Send(s)
	// fmt.Println(s)
}
