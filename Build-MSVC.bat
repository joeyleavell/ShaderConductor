rmdir /S /Q Build\\MSVC
rmdir /S /Q Install\\MSVC
cmake -D CMAKE_CXX_STANDARD=17 -D CMAKE_INSTALL_PREFIX="./Install/MSVC" -H. -BBuild/MSVC
cmake --build ./Build/MSVC --config Release
cmake --install ./Build/MSVC --config Release

:: Copy the artifacts over
mkdir ..\\Extern\\ShaderConductor\\Libraries\\x64\\Windows\\MSVC\\
mkdir ..\\Extern\\ShaderConductor\\Binaries\\x64\\Windows\\MSVC\\
mkdir ..\\Extern\\ShaderConductor\\Include
copy /y .\Build\MSVC\Bin\Release\ShaderConductor.dll ..\Extern\ShaderConductor\Binary\x64\Windows\MSVC\ShaderConductor.dll
copy /y .\Build\MSVC\Lib\Release\ShaderConductor.lib ..\Extern\ShaderConductor\Libraries\x64\Windows\MSVC\ShaderConductor.lib
copy /y .\Include\ShaderConductor\ShaderConductor.hpp ..\Extern\ShaderConductor\Include\ShaderConductor.hpp