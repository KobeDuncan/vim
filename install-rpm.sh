sudo yum install -y git vim global
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp -r colors ~/.vim/
cp vimrc ~/.vimrc
mkdir -p ~/bin
cp vimindex ~/bin/
chmod +x ~/bin/*
mkdir -p ~/.fonts
cp Monaco_Linux.ttf ~/.fonts/
sudo fc-cache -fv

setup_path=$(grep 'export PATH=$PATH:~/bin' ~/.bashrc)

if [ -z "$setup_path" ]; then
        echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
fi

echo "-------------------------------------------------------------------"
echo "Please perform 'BundleInstall' in vim to install all plugins"
echo "-------------------------------------------------------------------"
