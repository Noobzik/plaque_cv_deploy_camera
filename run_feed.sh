# Set variables
cd ..
export GST_PLUGIN_PATH=`pwd`/build
export LD_LIBRARY_PATH=`pwd`/open-source/local/lib

# Run feed
# echo "Supposed to run feed"
amazon-kinesis-video-streams-producer-sdk-cpp/gst-launch-1.0 v4l2src do-timestamp=TRUE device=/dev/video0 ! videoconvert ! video/x-raw,format=I420,width=416,height=416,framerate=3/1 ! x264enc  bframes=0 key-int-max=45 bitrate=500 ! video/x-h264,stream-format=avc,alignment=au,profile=baseline ! kvssink stream-name="test" storage-size=512 access-key="AKIAXWSM4R46QWXCIJPZ" secret-key="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" aws-region="us-east-1"
