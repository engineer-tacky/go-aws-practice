package image

import (
	"context"
	"log"

	"github.com/engineer-tacky/go-aws-practice/interfaces/image"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/aws/aws-sdk-go-v2/service/s3"
)

func GetList() image.Objects {
	// Load the Shared AWS Configuration (~/.aws/config)
	cfg, err := config.LoadDefaultConfig(context.TODO())
	if err != nil {
		log.Fatal(err)
	}

	// Create an Amazon S3 service client
	client := s3.NewFromConfig(cfg)

	// Get the first page of results for ListObjectsV2 for a bucket
	output, err := client.ListObjectsV2(context.TODO(), &s3.ListObjectsV2Input{
		Bucket: aws.String("my-bucket"),
	})
	if err != nil {
		log.Fatal(err)
	}

	// output.Contentsをimage.Objectsに変換
	var objects image.Objects
	for _, content := range output.Contents {
		objects = append(objects, image.Object{
			Key:  aws.ToString(content.Key),
			Size: aws.ToInt64(content.Size),
		})
	}

	return objects
}
