CALL py -m venv venv
CALL venv\scripts\activate
CALL pip install -r requirements.txt
CALL SET PLAYWRIGHT_BROWSERS_PATH=0
CALL playwright install chromium
CALL playwright install firefox
CALL pyinstaller -y -F main.py --add-data "venv/lib/site-packages/playwright/driver;playwright/driver" --add-data "venv/Lib/site-packages/sv_ttk;sv_ttk/" --add-data "venv/Lib/site-packages/sv_ttk/sv.tcl;."