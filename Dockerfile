FROM ubuntu:20.04
COPY sources.list /etc/apt/sources.list
EXEC wget http://centros.edu.guadalinex.org/Edu/focal/pool/main/e/educaandos-keyring/educaandos-keyring_0.3-4_amd64.deb
EXEC dpkg -i educaandos-keyring_0.3-4_amd64.deb
EXEC apt update
EXEC apt install -y educaandos-system educaandos-educacion educaandos-languages educaandos-educacion-tic educaandos-educacion-tic-cgaconfig educaandos-educacion-cgaconfig educaandos-dnie educaandos-dmic-audio-path educaandos-artwork tigervnc-standalone-server
COPY contrasena.sh /root/contrasena.sh
CMD ["bash"]