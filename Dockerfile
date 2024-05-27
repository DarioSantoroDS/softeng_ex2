FROM gcc:latest

#Install cmake

RUN apt-get update
RUN apt-get install -y  cmake 


#Set the workdir
WORKDIR  /usr/src/app/

RUN mkdir softeng2

WORKDIR /usr/src/app/softeng2

#Copy your files
COPY . .

#Create the build folder
RUN mkdir build

#Change workdir
WORKDIR /usr/src/app/softeng2/build

#Cmake
RUN cmake ..

#Cmake part2
RUN make

#Execute 
CMD ./CMakeHelloWorld
