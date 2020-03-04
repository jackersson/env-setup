VIDEO_CODEC_SDK_ARCH=$(find . -name 'Video_Codec_SDK*.zip')

if [ -f "$VIDEO_CODEC_SDK_ARCH" ]; then
    echo "$VIDEO_CODEC_SDK_ARCH"
else
    echo "Not found VIDEO CODEC SDK"
    exit
fi

unzip $VIDEO_CODEC_SDK_ARCH
rm $VIDEO_CODEC_SDK_ARCH

VIDEO_CODEC_SDK_FOLDER=$(basename $VIDEO_CODEC_SDK_ARCH .zip)
echo $VIDEO_CODEC_SDK_FOLDER

mv $VIDEO_CODEC_SDK_FOLDER "Video_Codec_SDK"
VIDEO_CODEC_SDK="Video_Codec_SDK"

cp $VIDEO_CODEC_SDK/include/* /usr/local/cuda/include
cp $VIDEO_CODEC_SDK/Lib/linux/stubs/x86_64/* /usr/local/cuda/lib64/stubs

rm -rf $VIDEO_CODEC_SDK
