# Лекции по дискретке

## Правила работы

### Полезные ресурсы
http://detexify.kirelabs.org/classify.html - позволяет рисовать символ, который хочешь и он находит его в синтаксисе теха.

---

### Оформление работы

Все определения, утверждения, теоремы и т.д. задаются строго через данные команды:
```latex
\opr == Определение.
\opri == Определение. (Важное определение)
\utv == Утверждение.
\utvi == Утверждение. (Важное утверждение)
\thr == Теорема.
\thri == Теорема. (Важная теорема)
\note == Замечание.
\notei == Замечание. (Важное замечание)
\example == Пример.
```

При добавлении лекции создавайте новый файл в папке `src/lectures/lecture_i.tex`, где $i$ - номер лекции.

Существует возможность добавлять новые команды для упрощения работы. Пример команд можно найти в папке `src/lib/commands.tex`.

Если лекция имеет имя, то его нужно указывать следующим образом, чтобы оно автоматически добавилось в секцию *Содержание*:
```latex
\section{Имя новой секции}
```

В качестве образца оформления можно брать первую лекцию.

Для того чтобы не ломать master ветку, **создавайте новую** и пишите там свой код. Делается это следующим образом:
```bash
git checkout -b Kolesnikov/lecture_1
```
Не забудьте поменять фамилию и номер лекции.
После того как закончите работу создайте запрос на слияние веток(Pull Requests).

После окончании работ делайте коммит и заливайте на свою ветку изменения.

```bash
git commit -m 'Add lecture_1'
git push
```

Если возникают сложности, не стесняйтесь спрашивать в чате.

---

## Добавление проекта к себе

```bash
git clone https://github.com/delvinru/discrete_math_lectures.git
cd discrete_math_lectures/
```

## Сборка проекта
Для сборки проекта вам необходимо иметь пакет `texlive-full`. Установить его можно следующим образом:

### Ubuntu
```bash
sudo apt update
sudo apt install texlive-full
```

### Arch Linux
```bash
sudo pacman -Syyu
sudo pacman -S texlive-most texlive-lang
```

Сборка проекта:
```bash
make
```