# ==========================================
# HomeHub Project Check
# Проверка состояния проекта
# ==========================================

# Загружаем настройки проверки проекта
$configPath = Join-Path $PSScriptRoot "check-project.json"
$config = Get-Content $configPath -Raw -Encoding UTF8 | ConvertFrom-Json

# Выводим заголовок проверки
Write-Host "=== HomeHub Project Check ==="


# ==========================================
# Проверка состояния Git
# ==========================================

# Показываем текущий статус Git:
# - изменённые файлы
# - новые файлы
# - состояние синхронизации с GitHub
Write-Host "`nGit status:"

git status


# ==========================================
# Проверка структуры проекта
# ==========================================

# Проверяем наличие обязательных папок из конфигурации
Write-Host "`nProject folders:"


$config.requiredFolders |
ForEach-Object {

    # Формируем полный путь к папке
    $path = Join-Path $PSScriptRoot "..\$_"

    # Проверяем существование папки
    if (Test-Path $path) {
        Write-Host "$_ : OK"
    }
    else {
        Write-Host "$_ : MISSING"
    }
}

# ==========================================
# Проверка обязательных файлов
# ==========================================

# Проверяем наличие файлов из конфигурации
Write-Host "`nProject files:"


$config.requiredFiles |
ForEach-Object {

    # Формируем путь к файлу
    $path = Join-Path $PSScriptRoot "..\$_"

    # Проверяем существование файла
    if (Test-Path $path) {
        Write-Host "$_ : OK"
    }
    else {
        Write-Host "$_ : MISSING"
    }
}

# ==========================================
# Проверка документации
# ==========================================

# Ищем Markdown-файлы в папке docs
# и проверяем их количество строк
Write-Host "`nDocumentation files:"


Get-ChildItem docs -Filter *.md |
ForEach-Object {

    # Читаем файл в кодировке UTF-8
    # и считаем количество строк
    $count = (Get-Content $_.FullName -Encoding UTF8).Count


    # Выводим имя файла и количество строк
    Write-Host "$($_.Name): $count lines"
}


# ==========================================
# Завершение проверки
# ==========================================

# Сообщение о завершении работы скрипта
Write-Host "`nCheck completed."
