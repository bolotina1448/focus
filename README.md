# Фокус-тетрадь 3.7

[Скачать APK для Android 7.0 и новее](https://raw.githubusercontent.com/bolotina1448/focus/downloads/FokusTetrad.apk)

Проект восстановлен из APK версии 3.7. Логика приложения находится в `smali/`. Это текстовое представление байткода Android. Макеты части экранов создаются программно. Ресурсы лежат в `res/`, шрифты — в `assets/`.

Имя пакета `ru.fokus.tetrad.restored` позволяет установить копию рядом с оригиналом. У копии своё хранилище, поэтому история, разрешения, настройки и авторизация из оригинала автоматически не переносятся.

## Сборка

Понадобятся Java, Apktool 2.12.1 и Android SDK Build Tools (проверено с 35.0.0).

Из каталога проекта выполните:

```sh
apktool b . -o FokusTetrad-unsigned.apk
zipalign -f 4 FokusTetrad-unsigned.apk FokusTetrad-aligned.apk
apksigner sign --ks /путь/к/вашему/ключу.jks --out FokusTetrad.apk FokusTetrad-aligned.apk
apksigner verify --verbose FokusTetrad.apk
```

Для установки обновления поверх уже установленной копии используйте тот же ключ подписи, которым подписана эта копия.

## Проверка

Пересобранный APK повторно разобран. Байткод совпал с файлами проекта, идентификаторы ресурсов и шрифты сохранились. Подпись проверена. Запуск на Android и подключение к МЭШ и сервисам ИИ ещё не проверены.
