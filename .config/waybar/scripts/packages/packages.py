import json
import subprocess

#CONST
updated = 0
need_update = 20
alert_update = 100


def start_process(inputArgs:str):
    pacman_process = subprocess.run(args=inputArgs, shell=True, text=True, capture_output=True)
    if pacman_process.returncode == 0:
        return int(pacman_process.stdout)
    return 0

def get_updates_count():
    pacman_count = start_process('checkupdates 2> /dev/null | wc -l')
    yay_count = start_process('yay -Qu --aur --quiet | wc -l')
    return pacman_count + yay_count

# ----------------------------------------------------- 
# Calculate available updates pacman and aur (with yay)
# ----------------------------------------------------- 

def result():
    packages_count =  get_updates_count()
    css = 'green'
    if packages_count > alert_update-1:
        css = 'red' 
    elif packages_count > need_update -1:
        css ='yellow'
    json_result = json.dumps({'text':packages_count, 'alt':packages_count, 'class':css, 'tooltip':f'{packages_count} packages'})
    return json_result


if __name__ == '__main__':
    print(result())
