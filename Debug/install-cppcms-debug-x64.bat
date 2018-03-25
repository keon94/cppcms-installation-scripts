call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"
mkdir msvc-x64-deb  
cd msvc-x64-deb  
cmake -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Debug -DDISABLE_STATIC=ON -DCMAKE_INCLUDE_PATH=c:\cppcms_deps\x64\Debug\include -DCMAKE_LIBRARY_PATH=c:\cppcms_deps\x64\Debug\lib -DCMAKE_INSTALL_PREFIX=c:\cppcms_deps\x64\Debug ..
nmake 
set PATH=%PATH%;c:\cppcms_deps\x64\Debug\bin;.\booster\  
nmake test  
nmake install  
pause