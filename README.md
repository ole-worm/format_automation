# format_automation
This shell script parses mediainfo reports and returns relevant video format data: Codec, wrapper, standard, frame rate, scan type, resolution, aspect ratio, PAR, DAR, bit-depth, bit rate, color space, audio codec, audio channels, sampling rate, file size, duration.

Dependencies:
  iOS (not tested with other operating systems, but will likely work if mediainfo is available)
  mediainfo

Installation: 
  Download and save shell script locally. 
  Make shell script executable by opening up terminal 

Example of use:
  % /Volumes/myscripts/format_automation_v3.sh
Please drag and drop the file onto this script and press Enter.
/Volumes/2023-3085_Buttner_KarmelDachau/PRESERVATION/2023-3085-PRS-1.mov 
ProRes,  broadcast standard, 25.000 FPS, Progressive, 16:9, 1920 x 1080, PAR: 1.000, DAR: 1.778, 16-bits, 129 Mb/s,
PCM 2 channel audio, 48.0 kHz, 43.35 GiB, 00:48:13:03


Areas of improvement: 
  Codec designation (ex. H.264, Apple ProRes, 10-bit uncompressed) is listed under different parameters depending on the video       format. 
  Need to modify parameters that are not applicable to return as such rather than left blank. 
  Need to modify audio channel to list 
