@echo off
REM Clean up auxiliary files for CTAN submission
REM Windows batch script

echo Cleaning auxiliary files...

REM Remove LaTeX auxiliary files
del /Q *.aux *.log *.toc *.out *.bbl *.blg *.fls *.fdb_latexmk *.xdv *.synctex.gz 2>nul

REM Remove specific files
del /Q texput.log 2>nul

REM Clean subdirectories
cd contents
del /Q *.aux 2>nul
cd ..

cd contents_graduate
del /Q *.aux 2>nul
cd ..

echo.
echo Cleanup complete!
echo.
echo Files to keep for CTAN:
echo - README (English)
echo - LICENSE
echo - MANIFEST-CTAN.txt
echo - *.cls, *.dtx, *.ins
echo - main*.tex (examples)
echo - main*.pdf (example outputs)
echo - contents/ and contents_graduate/ directories
echo - figures/ directory
echo - ref/ directory
echo - *.md documentation files
echo - Makefile and makewin.bat
echo.
echo Ready for CTAN packaging!
pause
