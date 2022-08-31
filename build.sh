go install github.com/apptreesoftware/protoc-gen-twirp_dart
protoc -I protocol/ --plugin=/Users/mike/go/bin/protoc-gen-twirp_dart --twirp_dart_out=./lib ./protocol/livekit_room.proto
