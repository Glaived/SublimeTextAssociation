@echo off
:: The MIT License (MIT) Copyright (c) 2014 GlaiveÐ
:: https://github.com/Glaived/SublimeTextAssociation
setlocal enabledelayedexpansion
:top

:: Enter the path to the executable sublime_text.exe
:: e.i: C:\Program Files\Sublime Text 3\sublime_text.exe
set pathToSublimeTextExe=YOUR_VALUE


if defined pathToSublimeTextExe if exist "%pathToSublimeTextExe%" (
	ftype SublimeTextFiles=

	ftype SublimeTextFiles="%pathToSublimeTextExe%" "%%1"

	:: Global
	assoc .conf=SublimeTextFiles
	assoc .config=SublimeTextFiles
	assoc .inf=SublimeTextFiles
	assoc .ini=SublimeTextFiles
	assoc .log=SublimeTextFiles
	assoc .txt=SublimeTextFiles
	assoc .bak=SublimeTextFiles

	:: Sublime Text
	assoc .sublime-build=SublimeTextFiles
	assoc .sublime-commands=SublimeTextFiles
	assoc .sublime-completions=SublimeTextFiles
	assoc .sublime-keymap=SublimeTextFiles
	assoc .sublime-macro=SublimeTextFiles
	assoc .sublime-menu=SublimeTextFiles
	assoc .sublime-mousemap=SublimeTextFiles
	assoc .sublime-settings=SublimeTextFiles
	assoc .sublime-snippet=SublimeTextFiles
	assoc .sublime-theme=SublimeTextFiles

	:: TextMate
	assoc .tmLanguage=SublimeTextFiles
	assoc .tmPreferences=SublimeTextFiles
	assoc .tmSnippet=SublimeTextFiles

	:: BBcode
	assoc .bb=SublimeTextFiles
	assoc .bbcode=SublimeTextFiles

	:: Markdown
	assoc .md=SublimeTextFiles
	assoc .mdown=SublimeTextFiles
	assoc .markdn=SublimeTextFiles
	assoc .markdown=SublimeTextFiles

	:: Git
	assoc .gitignore=SublimeTextFiles
	assoc .id_rsa=SublimeTextFiles

	:: Python
	assoc .py=SublimeTextFiles

	:: Apache
	assoc .htaccess=SublimeTextFiles
	assoc .htgroups=SublimeTextFiles
	assoc .htpasswd=SublimeTextFiles

	:: Web development (Front)
	assoc .css=SublimeTextFiles
	:: assoc .htm=SublimeTextFiles
	:: assoc .html=SublimeTextFiles
	assoc .js=SublimeTextFiles
	assoc .json=SublimeTextFiles
	:: assoc .svg=SublimeTextFiles

	:: Template engine (Front)
	assoc .ctp=SublimeTextFiles
	assoc .haml=SublimeTextFiles
	assoc .twig=SublimeTextFiles

	:: Web development (Pre-Proc HTML)
	assoc .jade=SublimeTextFiles

	:: Web development (Pre-Proc CSS)
	assoc .less=SublimeTextFiles
	assoc .sass=SublimeTextFiles
	assoc .scss=SublimeTextFiles

	:: Web developpement (Back)
	assoc .phar=SublimeTextFiles
	assoc .php=SublimeTextFiles
	assoc .rb=SublimeTextFiles
	assoc .sql=SublimeTextFiles

	echo.
	echo.
	echo Congratulations, your configuration for Sublime Text has been executed
	echo.
	echo.
	pause
) else (
	echo.
	echo pathToSublimeTextExe variable is not defined
	echo or the path to the executable of Sublime Text is incorrect.

	if defined pathToSublimeTextExe (
		echo.
		echo pathToSublimeTextExe:
		echo !pathToSublimeTextExe!
	)

	echo.
	pause
	cls

	goto top
)

exit