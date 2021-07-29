# Install pre-requists

sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio libssl-dev libcurl4-openssl-dev liblog4cplus-dev gstreamer1.0-plugins-base-apps -y

# Downloading base code

git clone https://github.com/awslabs/amazon-kinesis-video-streams-producer-sdk-cpp.git

# Making directories

mkdir -p amazon-kinesis-video-streams-producer-sdk-cpp/build
cd amazon-kinesis-video-streams-producer-sdk-cpp/build

# Run 1st compilation

cmake .. -DBUILD_GSTREAMER_PLUGIN=ON -DBUILD_JNI=TRUE

# Run 2nd compilation

make


mv ../run_feed.sh .
