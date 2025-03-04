
pip install -r requirements.txt

pip install <package>==  # список всех доступных версий пакетов
pip install <package>==<version>

pip install --upgrade <package>
pip install --upgrade <package>==<version>


pip uninstall <package>
pip freeze | xargs pip uninstall -y  # удалить все пакеты

