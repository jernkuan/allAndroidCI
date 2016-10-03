FROM openjdk:8-jdk
MAINTAINER Greyson Parrelli <greyson.parrelli@gmail.com>

ENV ANDROID_SDK_TOOLS="24.4.1"

RUN apt-get --quiet update --yes
RUN apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1

RUN wget --quiet --output-document=android-sdk.tgz https://dl.google.com/android/android-sdk_r${ANDROID_SDK_TOOLS}-linux.tgz && \
tar --extract --gzip --file=android-sdk.tgz

ADD download_android_sdk.sh /
RUN chmod a+x /download_android_sdk.sh
RUN /download_android_sdk.sh

ENV ANDROID_HOME $PWD/android-sdk-linux
