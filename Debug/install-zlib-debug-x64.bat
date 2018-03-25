call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"
mkdir msvc-debug-x64  
cd msvc-debug-x64  
cmake -DBUILD_SHARED_LIBS=ON -G"NMake Makefiles" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=c:\cppcms_deps\x64\Debug .. 
nmake  
nmake install  
cd .. 
pause