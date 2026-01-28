@echo off
REM =========================================
REM CQJTUThesis Windows 编译脚本
REM =========================================

setlocal enabledelayedexpansion

set PACKAGE=cqjtuthesis
set MAIN=main
set CLS=%PACKAGE%.cls
set DTX=%PACKAGE%.dtx
set INS=%PACKAGE%.ins

if /i "%1" == "thesis" goto :thesis
if /i "%1" == "doc" goto :doc
if /i "%1" == "extract" goto :extract
if /i "%1" == "clean" goto :clean
if /i "%1" == "cleanall" goto :cleanall
if /i "%1" == "help" goto :help
if /i "%1" == "" goto :thesis
goto :help

:thesis
    echo ========================================
    echo 编译论文...
    echo ========================================
    call :extract
    xelatex -interaction=nonstopmode %MAIN%
    bibtex %MAIN%
    xelatex -interaction=nonstopmode %MAIN%
    xelatex -interaction=nonstopmode %MAIN%
    echo ========================================
    echo 论文编译完成！生成文件: %MAIN%.pdf
    echo ========================================
    goto :end

:doc
    echo ========================================
    echo 编译用户手册...
    echo ========================================
    xelatex -interaction=nonstopmode %DTX%
    makeindex -s gind.ist -o %PACKAGE%.ind %PACKAGE%.idx
    makeindex -s gglo.ist -o %PACKAGE%.gls %PACKAGE%.glo
    xelatex -interaction=nonstopmode %DTX%
    xelatex -interaction=nonstopmode %DTX%
    echo ========================================
    echo 用户手册编译完成！生成文件: %PACKAGE%.pdf
    echo ========================================
    goto :end

:extract
    if exist %CLS% goto :end
    echo ========================================
    echo 提取文档类文件...
    echo ========================================
    xelatex %INS%
    echo 文档类提取完成！
    goto :end

:clean
    echo ========================================
    echo 清理临时文件...
    echo ========================================
    del /f /q *.aux *.log *.out *.toc *.bbl *.blg *.idx *.ind *.glo *.gls *.ilg *.lot *.lof 2>nul
    del /f /q contents\*.aux 2>nul
    echo 临时文件清理完成！
    goto :end

:cleanall
    echo ========================================
    echo 清理所有生成文件...
    echo ========================================
    call :clean
    del /f /q %MAIN%.pdf %PACKAGE%.pdf %CLS% 2>nul
    echo 所有生成文件清理完成！
    goto :end

:help
    echo ========================================
    echo CQJTUThesis Windows 编译脚本使用说明
    echo ========================================
    echo.
    echo 用法: makewin [命令]
    echo.
    echo 可用命令:
    echo   thesis    - 编译论文（默认）
    echo   doc       - 编译用户手册
    echo   extract   - 从DTX文件提取文档类
    echo   clean     - 清理临时文件
    echo   cleanall  - 清理所有生成文件
    echo   help      - 显示此帮助信息
    echo.
    echo 示例:
    echo   makewin thesis     编译论文
    echo   makewin clean      清理临时文件
    echo.
    echo ========================================
    goto :end

:end
endlocal
