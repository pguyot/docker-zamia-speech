FROM pguyot/py-kaldi-asr:latest

# Dependencies
RUN apt-get install xz-utils

# Checkout and configure zamia speech
RUN git clone https://github.com/pguyot/zamia-speech.git \
  && (echo "[speech]" && echo "kaldi_root = /opt/kaldi") > /root/.speechrc
