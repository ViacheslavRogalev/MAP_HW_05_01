FROM ubuntu:latest
	LABEL mantainer="khv-rvv@mail.ru"
	RUN apt-get update 
	RUN apt-get -y install g++ nano net-tools inetutils-ping
	WORKDIR /root/test
	COPY MAP_HW_05_01.cpp .
	RUN g++ MAP_HW_05_01.cpp -o MAP_HW_05_01
	CMD ["./MAP_HW_05_01"]
