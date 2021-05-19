FROM ubuntu:20.04
RUN apt update
RUN apt install -y wget
COPY sources.list /etc/apt/sources.list
RUN wget http://centros.edu.guadalinex.org/Edu/focal/pool/main/e/educaandos-keyring/educaandos-keyring_0.3-4_amd64.deb
RUN dpkg -i educaandos-keyring_0.3-4_amd64.deb
RUN apt update
RUN apt install -y educaandos-system educaandos-educacion educaandos-software-center educaandos-languages educaandos-educacion-tic educaandos-educacion-tic-cgaconfig educaandos-educacion-cgaconfig educaandos-dnie educaandos-dmic-audio-path educaandos-artwork tigervnc-standalone-server
COPY contrasena.sh /root/contrasena.sh
RUN contrasena.sh
EXPOSE 5900
CMD ["vncserver"]
