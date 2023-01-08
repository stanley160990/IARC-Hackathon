# NVIDIA Bootcamp Script

## prerequisite

### Config NVDIA MIG
In this Bootcamp, each participant will get one mig of 5GB, so it needs to be configured in MIG.

To perform enable mig on the A100

```
systemctl stop nvsm
systemctl stop nvidia-dcgm

# values 0 to 7 (8 Cores) represent the GPU ID

nvidia-smi -i 0 -mig 1
nvidia-smi -i 1 -mig 1
nvidia-smi -i 2 -mig 1
nvidia-smi -i 3 -mig 1
nvidia-smi -i 4 -mig 1
nvidia-smi -i 5 -mig 1
nvidia-smi -i 6 -mig 1
nvidia-smi -i 7 -mig 1

#value 0 to 7 (8 Cores) is the ID of the GPU, 19 is the ID for MIG 5G, so each GPU Core will be divided into 7
nvidia-smi mig -i 0 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 1 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 2 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 3 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 4 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 5 -cgi 19,19,19,19,19,19,19 -C
nvidia-smi mig -i 7 -cgi 19,19,19,19,19,19,19 -C

systemctl start nvsm
systemctl start nvidia-dcgm

```

## Running Bootcamp Environment

### BUILD Image Bootcamp

```
mkdir bootcamp-nvidia
https://github.com/stanley160990/IARC-Hackathon .

#bootcampiarc:0.1 merupakan nama image yang dihasilkan oleh proses build
docker build . -t bootcampiarc:0.1
```
### Run Bootcamp Container
```
./run.sh <kode_hari> <id_gpu> <nama_image>
```

Copy the Access URL to share with participants

### stop Bootcamp Container
```
./stop.sh <kode_hari> <id_gpu>
```
### Remove Bootcamp Container
```
./remove.sh <kode_hari> <id_gpu>
```

## Credit

* Python AI Material from https://github.com/openhackathons-org/gpubootcamp
* Python AI Material in Bahasa Indonesia Translate by Gunadarma Artificial Intelegence Center of Excelence (https://ai-coe.gunadarma.ac.id/)
* Dockerfile From https://github.com/openhackathons-org/gpubootcamp
* MIG Configuration from NVIDIA DGX A100 Documentation

## License
GPL V3
https://www.gnu.org/licenses/gpl-3.0.en.html
