rm -rf Build/GCC
rm -rf Install/GCC
cmake -D CMAKE_CXX_STANDARD=17 -D CMAKE_INSTALL_PREFIX="./Install/GCC" -H. -BBuild/GCC
cmake --build ./Build/GCC --config Release
cmake --install ./Build/GCC --config Release

# Copy the artifacts over
mkdir ../Extern/ShaderConductor/Libraries/x64/Linux/GCC/
mkdir ../Extern/ShaderConductor/Binaries/x64/Linux/GCC/
mkdir ../Extern/ShaderConductor/Include
cp ./Build/GCC/Bin/Release/libShaderConductor.so ../Extern/ShaderConductor/Binary/x64/Linux/GCC/libShaderConductor.so
#cp ./Build/GCC/Lib/Release/ShaderConductor.lib ../Extern/ShaderConductor/Libraries/x64/Windows/MSVC/ShaderConductor.lib
cp ./Include/ShaderConductor/ShaderConductor.hpp ../Extern/ShaderConductor/Include/ShaderConductor.hpp