# PowerShell Основные операции

## Проверка кодировки терминала

Команда:

```powershell
chcp
```

Правильный результат:

```text
Active code page: 65001
```

## Установка UTF-8

Команда:

```powershell
chcp 65001
```

## Чтение файлов UTF-8

Использовать:

```powershell
Get-Content файл -Encoding UTF8
```
