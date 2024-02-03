# Stockholm

*Introduction to file manipulation by creating a harmless malware.*

In this project you will develop a small program with the aim of understanding how malware works.
We will focus on ransomware.
A specific feature of this type of program is its ability to spread through networks of hundreds of computers.
In our case, your program will only affect a small portion of your local files.
It’s all about understanding how a fairly simple program works in order to better protect yourself from it.

## Usage
```sh
sudo apt update
sudo apt install git make docker.io
git clone git@github.com:Skalyaeve/stockholm.git
cd stockholm
sudo make docker
sudo docker exec -it test_docker bash
```
```sh
echo -e "==================\n\nBefore:"
find ../infection -type f | xargs cat

echo -e "\nRunning:"
./stockholm

echo -e "\nAfter:"
find ../infection -type f | xargs cat

echo -e "\nRunning:"
./stockholm -r

echo -e "\nRestored:"
find ../infection -type f | xargs cat
```

```sh
sudo make docker-stop
sudo make docker-clean
```
