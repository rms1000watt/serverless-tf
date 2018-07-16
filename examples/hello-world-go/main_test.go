package main

import (
	"reflect"
	"testing"
)

func TestHandler(t *testing.T) {
	tests := []struct {
		name    string
		want    Response
		wantErr bool
	}{
		{
			want: Response{
				Message: "hello world",
			},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, err := Handler()
			if (err != nil) != tt.wantErr {
				t.Errorf("Handler() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
			if !reflect.DeepEqual(got, tt.want) {
				t.Errorf("Handler() = %v, want %v", got, tt.want)
			}
		})
	}
}
