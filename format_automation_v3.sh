#!/bin/bash

# Function to display usage information
usage() {
    echo "Usage: $0"
    echo "Please drag and drop the file onto this script."
    exit 1
}

# Check if any arguments are provided
if [ "$#" -ne 0 ]; then
    usage
fi

# Prompt the user to drag and drop the file
echo "Please drag and drop the file onto this script and press Enter."
read -r input_file

# Check if input file is provided
if [ -z "$input_file" ]; then
    usage
fi

# Run MediaInfo command and extract information from specific tracks
one_info=$(mediainfo -f --Output="Video;%Format%, %Standard% broadcast standard, %FrameRate% FPS, %ScanType%, %DisplayAspectRatio/String%, %Width% x %Height%, PAR: %PixelAspectRatio%, DAR: %DisplayAspectRatio%, %BitDepth/String%," "$input_file")
two_info=$(mediainfo -f --Output="General;%OverallBitRate/String%," "$input_file")
three_info=$(mediainfo -f --Output="Audio;%Format% %Channel(s)% channel audio, %SamplingRate/String%," "$input_file")
four_info=$(mediainfo -f --Output="General;%FileSize/String4%, %Duration/String4%" "$input_file")

# Display the results
echo "$one_info" "$two_info" 
echo "$three_info" "$four_info"
