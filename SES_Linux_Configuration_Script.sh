echo "Configurando Acesso remoto XRDP..." ;
sudo apt install xrdp ;
sudo systemctl status xrdp ;
sudo adduser $(whoami) ssl-cert ;
sudo systemctl restart xrdp ;
sudo ufw allow 3389 ;

echo "Configurando java JDK..."
sudo apt install openjdk-16-jdk ;

echo "$(javac --version) é seu JDK instalado." ;

echo "Configurando git..." ;
sudo apt update ;
sudo apt install git ;
echo "$(git --version) é sua versão instalada do git." ;

echo "Instalando node..." ;
sudo apt install nodejs npm ;

echo "Versão do node instalada na máquina: $(nodejs --version)" ;
echo "Versão do npm instalada na máquina: $(npm --version)" ;

echo " DICA ______________________________" ;
sudo npm install -g n ;
sudo n 10.19.0 ;
PATH="$PATH" ;

echo "Instalando e configurando Angular CLI..." ; 
sudo npm install -g @angular/cli@11.2.4 ;

echo "Instalando fontes da microsoft para rodar os relatorios... " ;
sudo apt install ttf-mscorefonts-installer ;
sudo fc-cache -fv ;
wget https://raw.githubusercontent.com/mrbvrz/segoe-ui-linux/master/install.sh ;
chmod +x install.sh ;
./install.sh ;
sudo fc-cache -fv ;

echo "Instalando LibreOffice" ;
sudo apt install libreoffice-l10n-pt-br ;

# = Visual Studio Code ================================================================
# # Vá no site oficial e baixe o instalador (.deb)
# # Vá no diretório onde vc baixou e execute (coloque o nome do .deb no lugar ali do code): 
# sudo dpkg --install code.....deb

# = eclipse ===========================================================================
# # Baixe o tar la no site official do eclipse, extraia em uma pasta, entre nela e execute:
# cd eclipse-installer/ 
# ./eclipse-inst
# # Depois abra e vá em Help --> Eclipse Marketplace --> install JBoss Tools 4.18.0 Final;

# = dbeaver ====================================================================
# # Assim como o visual studio, vá ao site oficial, baixe o executavel (.deb),
# # entre na pasta onde vc baixou e rode:
# sudo dpkg -i db......deb

# = Jasper =====================================================================
# https://sourceforge.net/projects/jasperstudio/files/JaspersoftStudio-6.11.0/TIB_js-studiocomm_6.11.0_linux_amd64.deb/download

# # Baixe o .deb e execute o sudo dpkg -i T....deb

# = Chrome ======================================================================
# -- -- Assim como o visual studio, vá ao site oficial, baixe o executavel (.deb),
# -- entre na pasta onde vc baixou e rode:
# sudo dpkg -i chrom...deb

# ====================================================================================

echo "Configurando função Ls quando der um cd ..." ;
echo "     " >> ~/.bashrc ;
echo "# modificacao comando Ls " >> ~/.bashrc ;
echo "function cd { " >> ~/.bashrc ;
echo "    builtin cd \""\$\@\"" && ls -F " >> ~/.bashrc ;
echo "} " >> ~/.bashrc ;
sudo source ~/.bashrc ;
echo "Concluido!" ;

# --------------------------------------------
# --Renomear para Desktop (area de trabalho)
# sudo mousepad  ~/.config/user-dirs.dirs
# --------------------------------------------
# arc-theme e papirus icons
# sudo apt install arc-theme papirus-icons-theme
# --------------------------------------------
# para melhor performance (Se usando interface Gnome)
# sudo apt install gnome-tweaks
# --------------------------------------------
# -- Arrumar hora no Debian linux:
# su -
# date --set HH:MM:ss
# hwclock --systohc
# reboot

# -- se não der certo, tente esse:
# dpkg-reconfigure tzdata
# apt install ntpdate
# ntpdate -v pool.ntp.br
# apt install ntp
# date --set HH:MM:ss
# hwclock --systohc
# reboot
# --------------------------------------------
# -- Acesso smb para pasta de relatorios
# sudo apt-get install fusesmb gvfs-backends
# smb://172.20.20.37/dfs/POLICLINICA/Poli.Getin/DIVISÃO DE DESENVOLVIMENTO/BRD - Relatórios de Atividade/Relatório Acesso Remoto/
# --------------------------------------------
# -- Adicionar novo usuário por Terminal (Geralmente da pra fazer isso por interface Grafica);
# sudo useradd -m teste

# -- Senha para o novo usuário:
# sudo passwd teste

# -- Adicionar o usuario ao sudo:
# sudo usermod -a -G sudo teste
echo "______________ DICAS _______________"
echo " Para salvar seu login do git " ;
echo " git config --global credential.helper store " ;
echo " git pull (Dentro do projeto, se não de git clone) " ;
echo "____________________________________" ;
echo " Para baixar o Visual Studio Code, Google Chrome, Eclipse, Jasper e Dbeaver" ;
echo " Vá no site, baixe o .deb, depois execute (subistituindo o 'arquivo' por seu executavel): sudo dpkg -i arquivo.deb"
echo "____________________________________" ;
echo " Se precisar reinstalar o angular em alguma versão específica: " ;
echo " sudo npm uninstall -g @angular/cli " ;
echo " sudo npm cache clean " ;
echo " sudo npm install -g @angular/cli@11.2.4 " ;
echo "____________________________________" ;
echo " Se tiver vários javas na máquina e quiser configurar outro padrão de versão do jdk: " ;
echo " sudo update-alternatives --config java " ; 
echo " Caso seja necessário setar a variavel de ambiente (somente se não for reconhecido os comandos (dificil)): " ;
echo " Mude para sua versão dai (no meu exeplo está como JDK 12):  " ;
echo " export JAVA_HOME=/usr/lib/jvm/openjdk-12-jdk " ;
echo " export PATH=$PATH:$JAVA_HOME/bin  " ;
echo "____________________________________" ;
echo " # Se tiver problema com versão do npm, execute o comando para deixar na versão que você deseja: " ;
echo " sudo npm install -g npm@6.14.4 " ;
echo "____________________________________" ;
echo " Caso seja necessário instalar o Jasper na versão da SES, utilize o link abaixo para baixar o executavel: " ;
echo "https://sourceforge.net/projects/jasperstudio/files/JaspersoftStudio-6.11.0/TIB_js-studiocomm_6.11.0_linux_amd64.deb/download" ;
echo "____________________________________" ;