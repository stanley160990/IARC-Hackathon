# NVIDIA Bootcamp Script

## prerequisite

### Config NVDIA MIG
Pada kebutuhan Bootcamp ini setiap peserta akan mendapatkan satu mig sebesar 5GB, sehingga perlu di konfigurasi MIG.

Untuk melakukan enable mig pada A100

```
systemctl stop nvsm
systemctl stop nvidia-dcgm

# nilai 0 sampai 1 merupakan ID GPU

nvidia-smi -i 0 -mig 1
nvidia-smi -i 1 -mig 1
nvidia-smi -i 2 -mig 1
nvidia-smi -i 3 -mig 1
nvidia-smi -i 4 -mig 1
nvidia-smi -i 5 -mig 1
nvidia-smi -i 6 -mig 1
nvidia-smi -i 7 -mig 1

# nilai 0 sampai 1 merupakan ID dari GPU, 19 adalah ID untuk MIG 5G, jadi setiap Core GPU akan dibagi menjadi 7
nvidia-smi mig -i 0 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 1 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 2 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 3 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 4 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 5 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 7 -cgi 19,19,19,19,19,19,19 -C

```

## Running Bootcamp Environment

### BUILD Image Bootcamp

```
mkdir bootcamp-nvidia
git clone https://github.com/stanley160990/epsindo-hackathon.git .

#bootcampepsindo:0.1 merupakan nama image yang dihasilkan oleh proses build
docker build . -t bootcampepsindo:0.1
```
### Run Bootcamp Container
```
./run.sh <kode_hari> <id_gpu> <nama_image>
```
### stop Bootcamp Container
```
./stop.sh <kode_hari> <id_gpu>
```
### Remove Bootcamp Container
```
./remove.sh <kode_hari> <id_gpu>
```