@echo off
echo ========================================
echo    EXECUTANDO TESTES - ROBOT FRAMEWORK
echo ========================================
echo.

REM Executar todos os testes
".\.venv\Scripts\robot.exe" --outputdir results test_login.robot

echo.
echo ========================================
echo    TESTES CONCLUIDOS!
echo ========================================
echo.
echo Verifique os arquivos gerados em 'results':
echo - report.html (Relatório dos testes)
echo - log.html (Log detalhado)
echo - output.xml (Dados XML)
echo.
echo Para abrir o relatório, execute:
echo start results\report.html
echo.
pause