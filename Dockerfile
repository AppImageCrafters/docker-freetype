FROM appimagecrafters/docker-base

ADD install-freetype2.sh /

COPY --from=appimagecrafters/docker-glib /usr/local /usr/local

ARG FREETYPE2_VERSION=2.10.1
RUN /install-freetype2.sh