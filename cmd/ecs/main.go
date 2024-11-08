package main

import (
	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()
	e.GET("/", func(c echo.Context) error {
		return c.String(200, "Hello, Worldaaaaaaaaaaaaaa!\n")
	})
	e.GET("/about", func(c echo.Context) error {
		return c.String(200, "Hello, Aboutaaaaaaaaaaa!\n")
	})
	e.Logger.Fatal(e.Start(":8080"))
}
