# <p align="center">stockholm</p>
> *Introduction à la manipulation de fichiers par la création d'un malware inoffensif.*
>
> *Dans ce projet, vous développerez un petit programme dans le but de comprendre le fonctionnement des malwares. Nous nous concentrerons sur les rançongiciels (logiciels rançonneurs).*
>
> *Une caractéristique spécifique de ce type de programme est sa capacité à se propager à travers des réseaux de centaines d'ordinateurs. Dans notre cas, votre programme n'affectera qu'une petite partie de vos fichiers locaux. L'objectif est de comprendre le fonctionnement d'un programme relativement simple afin de mieux vous en protéger.*

## Install
```bash
sudo apt update -y
sudo apt install -y make
sudo apt install -y docker.io
```
```bash
git clone https://github.com/Skalyaeve/stockholm.git
cd stockholm && sudo make docker
```

## Usage
```bash
sudo docker exec -it test_docker bash
```
```bash
echo -e "==================\nBefore:"
find ../infection -type f | xargs cat

echo -e "\nRunning ./stockholm:"
./stockholm

echo -e "\nAfter:"
find ../infection -type f | xargs cat

echo -e "\nRunning ./stockholm -r:"
./stockholm -r

echo -e "\nRestored:"
find ../infection -type f | xargs cat
exit
```
```bash
sudo make docker-stop
sudo make docker-clean
```

