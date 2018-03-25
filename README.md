# cppcms-installation-scripts

These scripts will facilitate the build for the CppCMS framework in MSVC (64 bit):

1. Determine whether you are targeting debug or release
2. Download the following libraries and put them in any directory:
- zlib: https://zlib.net/ (v1.2.11 as of 03-25-2018)
- pcre: ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/ (v8.42 as of 03-25-2018)
- icu: https://www.npcglib.org/~stathis/blog/precompiled-icu/ (v59.1 as of 03-25-2018)
- cppcms: https://github.com/artyom-beilis/cppcms/releases (v1.2 as of 03-25-2018)
3. Ensure that you have CMake installed. You can get it from here: https://cmake.org/download/
4. Depending on your target, copy each batch script from the Debug or Release folder to the 
corresponding root directory of the libraries you downloaded in step 2.	
5. These scripts were written for MSVS Community 2017 installed in the standard location. If you have a different version/location, you must modify 
the first line in the scripts to point to your location of vcvars64.bat.
6. If you want to have .pdb files be generated, in each of those library directories, ensure that 
the following is present in CMakeLists.txt:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;							if(MSVC) <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		OPTION(INSTALL_MSVC_PDB ON) <br />   	
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;							endif() <br />

7. Using the provided install-~.bat scripts build zlib, pcre, icu, lastly cppcms. 
