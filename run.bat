CALL py -m venv venv
CALL venv\scripts\activate
CALL pip install -r requirements.txt
CALL SET PLAYWRIGHT_BROWSERS_PATH=0
CALL playwright install chromium
CALL pyinstaller -y -F main.py --add-data "venv/lib/site-packages/playwright/driver;playwright/driver"
