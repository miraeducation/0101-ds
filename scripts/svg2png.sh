#!/bin/bash

find assets/images/svg/ -name '*.svg' -exec sh -c 'imageName=`basename "${0%}"`; svgexport "assets/images/svg/${imageName%}" assets/images/png/"${imageName%.*}".png' {} \;
find assets/images/svg/ -name '*.svg' -exec sh -c 'imageName=`basename "${0%}"`; svgexport "assets/images/svg/${imageName%}" assets/images/png/"${imageName%.*}@2x".png 2x' {} \;
find assets/images/svg/ -name '*.svg' -exec sh -c 'imageName=`basename "${0%}"`; svgexport "assets/images/svg/${imageName%}" assets/images/png/"${imageName%.*}@3x".png 3x' {} \;