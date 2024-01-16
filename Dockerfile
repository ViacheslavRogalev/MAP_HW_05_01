FROM ubuntu:latest
	LABEL mantainer="khv-rvv@mail.ru"
	RUN apt-get update 
	RUN apt-get -y install g++ nano net-tools inetutils-ping
	WORKDIR /root/test
	COPY hello_world.cpp .
	RUN g++ hello_world.cpp -o hello_world
	CMD ["./hello_world"]