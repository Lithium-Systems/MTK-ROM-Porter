::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCWGMWK0OpET/+b34OuDsXEJXe8yc4DU5rmaK60U61fmdJEom2pVit8YAxRUMx+qfRsxu1JPom/IJciR/h/uWFyM9AUqEnUU
::fBE1pAF6MU+EWHreyHcjLQlHcCWGMWK0OpET/+b34OuDsXEJXe8yc4DU5rmaK60U61fmdJEom2pVit8YAxRUMx+qfRsxu1JPt22LedeF0w==
::fBE1pAF6MU+EWHreyHcjLQlHcCWGMWK0OpET/+b34OuDsXEJXe8yc4DU5rmaK60U61fmdJEom2pVit8YAxRUMx+qfRsxu1JBuWqDPsCP/QXyRUbp
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpQQQ2MAE+1EbsQ5+n//NaTq0AQX+0wRILP0fmJIfIR60LhOIYixG5Ol8QAQRZZbQaufDMZnUUChEuod/eToRvkWAig5UQ+WzAl1S3ZjyRb
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIdHDAUfiuvfFu1FKEZ+og=
::eg0/rx1wNQPfEVWB+kM9LVsJDCm2FyuIKZhc2Ofp+++V7EgFUYI=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIdHDAUfiuvfFu1FKEZ+qj59qqprUwVFMYwdYbV3aGLM4A=
::dhA7uBVwLU+EWHSw3wICBzYUfAuQKG6oRrcFqMb07uLHhkIQXew4bYrIug==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE2k0xIFtwQwmLMmyvA6Z8
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmpwGlwGjR5DDSNLn+/FPUe8ajV4OuP4mkSWesxf5reydQ=
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MAE+1EbsQ5+n//NaTq0AQX+0wRILP0fmJIfIR60LhOIYixG5Ol8QAQRZZbQaufDMZnUUChEuod/eToRvkWAaM/k5Q
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal
title MediaTek ROM Porter

color 1F
echo(
echo ==================== MediaTek (MTK) ROM Porter ====================
echo ======================== By Noah Domingues ========================
echo(
echo ----- Based on MTK Garbage Porttool by xpirt/luxi78/howellzhu -----
echo(
echo ---------- Discord Server: https://discord.gg/3zbfaTNN7V ----------
echo(

:: Set file attributes
attrib +h "main.py"
attrib +h "configs.json"

:: Check Python is installed
echo Checking system requirements...

where python >nul 2>nul
:: Python is not installed
if %errorlevel% neq 0 (
    color 4F
    title MediaTek ROM Porter - Error!
    echo ERROR: Python is not installed. Please install Python on your computer and try again.
    exit /b 1
)

echo System OK. Proceeding...

echo Preparing...

powershell -Command "Try { Expand-Archive -Path 'mtk-rom-porter.zip' -DestinationPath '.' -ErrorAction SilentlyContinue } Catch {}"
:: Set file attributes
if exist "bin" attrib +h "bin"
if exist "porttool" attrib +h "porttool"
if exist "logo.ico" attrib +h "logo.ico"
:: Clean up
del /f /q "mtk-rom-porter.zip"
echo Preparation complete!

echo Starting...

python main.py