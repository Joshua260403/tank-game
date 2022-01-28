@echo off
cd ..
mkdir bin
cd bin
xcopy ..\src\resources\* . /y
g++ -c -std=c++14 -Wall -Wextra -Wshadow -Wnon-virtual-dtor -pedantic -Werror -Wno-unused-variable -fext-numeric-literals -IC:/sfml/include -I../src ../src/*.h
g++ -c -std=c++14 -Wall -Wextra -Wshadow -Wnon-virtual-dtor -pedantic -Werror -Wno-unused-variable -fext-numeric-literals -IC:/sfml/include -I../src ../src/*.cpp
g++ *.o -o tankgame-dev.exe -LC:/sfml/lib -lsfml-graphics-d -lsfml-window-d -lsfml-system-d -lsfml-audio-d
cd ..\scripts
