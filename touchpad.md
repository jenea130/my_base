syndaemon - отслеживает активность клавиатуры и отключает тачпад, когда клавиатура используется

syndaemon -i 0.8 -K -t -d

-i 0.8 указывает ждать 0.8 секунды после последнего нажатия клавиши перед повторным включением тачпада.
-K позволяет игнорировать комбинации клавиш-модификаторов, такие как Ctrl, Alt и/или Shift +.
-t отключает только касание / прокрутку. Движение мыши при наборе текста по-прежнему возможно.
-d запускает команду как демон, в фоновом режиме.

---------------------

xinput # вывод команды

xinput --disable 11 # отключить тачпад
xinput --enable 11 # включить тачпад
