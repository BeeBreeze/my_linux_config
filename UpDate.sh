#conda update -n base --all -y
#conda update -n database --all -y
##conda update -n dedupe --all -y
#conda update -n fenicsproject --all -y
#conda update -n torch --all -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get -f install
sudo apt-get autoremove -y
#sudo do-release-upgrade
conda clean --packages --tarballs -y
conda clean --all -y
#sudo ukuu --check
