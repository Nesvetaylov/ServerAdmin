В этом каталоге находятся промежуточные задания. Всего их 4:

- задачи по bash
- прохождение курса hackthebox
- решение регулярок
- небольшой проект, который нужно докеризировать и реализовать CI/CD

Ниже описано каждое задание подробнее.

## Авторизация по ключу

Вход по паролю будет отключён 01.05.2023. До этого времени необходимо настроить авторизацию по ключу.

## bash

В каталоге bash есть шаблоны скриптов. После подключения github репозитория и деплоя запустится github action, который проверит правильность их выполнения. Задачи:

1. Скрипт, который раз в секунду забирает среднюю загрузку системы из /proc/loadavg и сохраняет в файл в течение определённого времени. Имя файла и таймфрейм задаются в качестве аргумента. Каждая строка в результирующем файле должна иметь вид `[dd.mm](http://dd.mm/).yy hh:mi = <вывод /proc/loadavg>`.
2. Скрипт, который принимает путь в качестве аргумента и создаёт набор файлов с названием подкаталогов в указанном пути и содержимым числом элементов в этом подкаталоге. Обработать ошибку, если путь не существует.
3. Подсчитать количество строк в файлах, переданных как параметры. Пример вызова: `lcc .bash_history .bashrc /etc/passwd`. Обработать ошибку, если файла не существует.
4. Скрипту передаётся название планеты как аргумент, вывести количество спутников. Обработать ошибку в названии планеты (сказать, что такой не существует).
5. Для всех файлов в каталоге /var/log, которые заканчиваются на .log, получить последнюю строчку и сохранить в файл logs.log.
6. Написать скрипт, который будет ждать появления файла в текущем каталоге. Как только файл появится, вывести об этом сообщение. Запретить выполнение скрипта, если переменная окружения FOO равна 5 и переменная окружения BAR равна 1.
7. Для каждого пути в PATH вывести его название и количество файлов в нём.
8. Проверить, что все переменные окружения для локализации (начинаются на "LC_") имеют одинаковое значение. Если это не так, сообщить ошибкой.

Внимательно читайте вывод pytest, в нём указан формат ожидаемого ответа. Проверить файлы локально можно на сервере, запустив скрипт check.sh.

## hackthebox

Необходимо зарегистрироваться на сайте [Hack the Box Academy](https://academy.hackthebox.com/), пройти курс [Linux Fundamentals](https://academy.hackthebox.com/module/details/18) и закоммитить в каталог скриншот завершённого прогресса.

## Регулярки

Необходимо зарегистрироваться на сайте [RegexCrossword](https://regexcrossword.com/), пройти модули "Double Cross" и "Cities" и закоммитить скриншот завершённого прогресса.

## Docker

В каталоге docker находится небольшое python-приложение, которое реализует CRUD к таблице users. Необходимо написать для него Dockerfile, подключить автоматический запуск тестов при коммите в master и деплой на сервер. Проверить работоспособность можно с помощью запросов к http://212.192.134.135:60080/<username>/users/, где username - ваш логин. Приложение должно слушать порт, указанный в листке с кредами.

Будет оцениваться:
1. Размер docker-образа
2. Реализация 2-stage build
3. Тестирование на CI/CD должно проходить в собранном образе с подключёнными сервисами
4. Доработки приложения
Trigger Github Actions
Trigger Github Actions_________
Trigger Github Actions__final
Trigger Github Actions__final_2
Trigger Github Actions one more
Trigger Github Actions one more_more
