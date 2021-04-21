FROM rapidsai/rapidsai:0.18-cuda11.0-runtime-centos8-py3.7

#
# update conda
#

RUN \
   source /opt/conda/etc/profile.d/conda.sh && \
   conda activate rapids && \
   conda update -y -n base -c defaults conda

#
# install DISCRET required packages
#

RUN \
   source /opt/conda/etc/profile.d/conda.sh && \
   conda activate rapids && \
   conda install -y pyspark
