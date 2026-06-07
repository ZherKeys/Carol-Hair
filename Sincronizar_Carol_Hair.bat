@echo off
title Carol Hair - Sincronizacao
color 0A

echo ========================================================
echo   1. SINCRONIZANDO SITE COM GITHUB
echo ========================================================
echo.
cd "D:\SITE TEMPLATES\SITE CLIENTES\carol-hair"

echo [1/3] Preparando arquivos modificados...
git add .

echo.
echo [2/3] Salvando alteracoes localmente...
git commit -m "Atualizacao automatica Carol Hair"

echo.
echo [3/3] Enviando para o GitHub...
echo (Se pedir para fazer login, confirme na janela que abrir)
git push origin main

echo.
if %errorlevel% equ 0 (
    echo ========================================================
    echo  SUCESSO! O codigo foi enviado!
    echo  O GitHub vai atualizar o site em instantes.
    echo ========================================================
) else (
    color 0C
    echo ========================================================
    echo  ERRO! Falha ao sincronizar. Verifique o aviso acima.
    echo ========================================================
)
pause
