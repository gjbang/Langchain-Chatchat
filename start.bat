@REM This a startup script for the chat chat server and xinference engine
@REM clear the screen
cls

@REM change conda environment to chatchat and start chat chat server
conda activate chatchat
@REM step1 install the dependencies for the chat chat server
cd ./lib/chatchat-server
poetry install --with lint,test -E xinference

@REM step2 buid
poetry build

@REM step3 check if config file exists, if not, execute the config script
if not exist basic_settings.yaml (
    python chatchat/cli.py init
)

@REM step4 start the chat chat server on the background, and output the log to the log file with timestamp
start /B python chatchat/cli.py start -a > ../../logs/chat_chat_server_%date:~10,4%%date:~4,2%%date:~7,2%.log



@REM python chatchat/cli.py kb --recreate-vs
@REM python chatchat/cli.py start -a

