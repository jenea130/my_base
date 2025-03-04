journalctl -b --grep='vdpau | dri driver'

journalctl --list-boots
journalctl -b 0

journalctl -u NetworkManager


journalctl -k # сообщения ядра

journalctl -f # в реальном времени

systemd-analyze
systemd-analyze blame

------------------------------
journalctl -p err
journalctl -p 0

(0)emerg - наивысший приоритет
(1)alert - тревога
(2)crit - критическое событие
(3)err - ошибки
(4)warning - внимание
(5)notice - уведомление
(6)info - информационное сообщение
(7)debug 

------------------------------
