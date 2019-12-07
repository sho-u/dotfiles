function! GetNgoAppId()
python3 << PYTHON
import uuid
import subprocess
import pyperclip

uuid = str(uuid.uuid4())
cmd = 'ssh ngo-va "cd ~/code/front;php artisan debug:CreateAppId %s"' % uuid
res = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE)
appid = res.stdout.decode('utf-8').rstrip('\n')
pyperclip.copy(appid)
print(appid)
PYTHON
endfunction
command! GetNgoAppId call GetNgoAppId()
