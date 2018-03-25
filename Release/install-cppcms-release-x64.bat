call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"
mkdir msvc-x64-rel  
cd msvc-x64-rel 
cmake -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=RelWithDebInfo -DDISABLE_STATIC=ON -DCMAKE_INCLUDE_PATH=c:\cppcms_deps\x64\Release\include -DCMAKE_LIBRARY_PATH=c:\cppcms_deps\x64\Release\lib -DCMAKE_INSTALL_PREFIX=c:\cppcms_deps\x64\Release ..
nmake 
set PATH=%PATH%;c:\cppcms_deps\x64\Release\bin;.\booster\  
nmake test  
nmake install  
pause