
pactl list sinks

pactl list sinks | grep -i 'active' | cut -d ' ' -f 3

pactl set-sink-port 0 'analog-output-headphones'


# прописать в файле .config/pulse/default.pa или /etc/pulse/default.pa
set-sink-port 0 'analog-output-headphones'
