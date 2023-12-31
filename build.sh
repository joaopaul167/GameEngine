#Build on a macbook pro m1
#!/bin/zsh
echo "Start Script!"
echo "Building!"

PROG_NAME=$1
IMGUI_DIR=include/imgui
SFML_INCLUDE_DIR=include/sfml
SFML_LIB_DIR=lib
GLFW_DIR=include/GLFW
ROOT_DIR=src
CPPFLAGS="-v -Wall -Wunused-result"
output=$(g++ main.cpp $IMGUI_DIR/imgui*.cpp $ROOT_DIR/*.cpp \
  -std=c++20 \
  -I $SFML_INCLUDE_DIR -I $IMGUI_DIR -I $GLFW_DIR -I $ROOT_DIR \
  -L $SFML_LIB_DIR -lsfml-graphics -lsfml-window -lsfml-system  \
  -framework OpenGL \
  -o build.out \
  )

if [[ $? != 0 ]]; then
  echo -e "Error:$output"
else
  echo "Success build!! Running the output!"
  ./build.out
fi
echo "End Script!"
echo "Executable is located ./build.out"

### Command to execute -> ./build.sh main.cpp <-