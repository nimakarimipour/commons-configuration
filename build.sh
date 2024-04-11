lib=true
arg=true
poly=true
cf_version="3.42.0"
C_VERSION="0.1"
rm -rvf target > /dev/null
CF_VERSION=$cf_version C_VERSION=$C_VERSION ANNOTATOR_POLY=$poly ANNOTATOR_LIBRARY=$lib ANNOTATOR_TYPE_ARG=$arg mvn compile -Drat.skip=true