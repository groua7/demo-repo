# functions in scripting
# all you need to do is to call the name of the funcyion and you are d to go!
# how ? put the function name in the last line, 

usermgt() {
echo "ENTER THE NAME OF THE NEW USER"
read name 
sudo useradd $name 
echo "$name account was created successfully"
grep $name /etc/passwd
}

packagemgt() {
    sudo apt update -y
    sudo apt install tree nano vim unzip -y
}

monitoring() {
    df -h
    # uptime
    # free  
    whoami
}

filemgt(){
    # the first line will check if /etc/passwd already exit in our env
    if [ -e /etc/passwd ]
    then 
    echo "the file exit, please proceed..."
    grep degbe7 /etc/passwd
    sudo touch demo.java /home/degbe7
    tail -1 /etc/passwd
    else
    echo "this file  does not exit, please try again"
    fi 
}
# this is how we call a funtion
usermgt
