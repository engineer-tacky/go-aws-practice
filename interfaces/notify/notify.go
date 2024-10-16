package notify

type Notify interface {
	Send(message string) error
}
