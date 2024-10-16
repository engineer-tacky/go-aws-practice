package notify

import (
	"context"
	"fmt"

	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/aws/aws-sdk-go-v2/service/sesv2"
	"github.com/aws/aws-sdk-go-v2/service/sesv2/types"
)

const region = "ap-northeast-1"

var (
	fromEmailAddress = "メールアドレスを入れる"
	toEmailAddress   = "メールアドレスを入れる"
	subject          = "TEST"
)

func Send(message string) error {
	ctx := context.Background()

	// sdk API Client 作成
	cfg, err := config.LoadDefaultConfig(ctx, config.WithRegion(region))
	if err != nil {
		panic(err)
	}
	client := sesv2.NewFromConfig(cfg)

	// SES API に投げ込むパラメタを作る
	input := &sesv2.SendEmailInput{
		FromEmailAddress: &fromEmailAddress,
		Destination: &types.Destination{
			ToAddresses: []string{toEmailAddress}, // 配列なので複数指定可能
		},
		Content: &types.EmailContent{
			Simple: &types.Message{
				Body: &types.Body{
					Text: &types.Content{
						Data: &message, // 本文
					},
				},
				Subject: &types.Content{
					Data: &subject, // 件名
				},
			},
		},
	}

	// メール送信
	res, err := client.SendEmail(ctx, input)
	if err != nil {
		panic(err)
	}
	fmt.Println(res.MessageId)
	fmt.Println("success!")

	return nil
}
