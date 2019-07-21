# Notebook Predator


Welcome to the hell of install NVIDIA, CUDA and Tensorflow-gpu and make all of these work together.

So, first of all, you need to have NVIDIA driver already installed in your Predator notebook.
The GPU device of Predator (at least in my case) is GeForce GTX 1060, so, you can download and install its driver by your self.

After that, lets...

## Check Driver Version

```
$ nvidia-smi
```

+-----------------------------------------------------------------------------+
| NVIDIA-SMI 390.116                Driver Version: 390.116                   |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|===============================+======================+======================|
|   0  GeForce GTX 1060    Off  | 00000000:01:00.0 Off |                  N/A |
| N/A   48C    P3    17W /  N/A |    393MiB /  6078MiB |      0%      Default |
+-------------------------------+----------------------+----------------------+

+-----------------------------------------------------------------------------+
| Processes:                                                       GPU Memory |
|  GPU       PID   Type   Process name                             Usage      |
|=============================================================================|
|    0      1495      G   /usr/lib/xorg/Xorg                           172MiB |
|    0      1680      G   /usr/bin/gnome-shell                         163MiB |
|    0     11056      G   ...-token=FC1B710CD66F9E9FD7480B5C65EBA925    55MiB |
+-----------------------------------------------------------------------------+

As you can see, the driver version is 390, then, check on the table below, which CUDA version you can have installed.

Table 1. CUDA Toolkit and Compatible Driver Versions
CUDA Toolkit |	Linux x86_64 Driver Version |	Windows x86_64 Driver Version

CUDA 10.1 (10.1.105 general release, and 10.1.168 Update 1 general release) 	>= 418.39 	>= 418.96
CUDA 10.0.130 	>= 410.48 	>= 411.31
CUDA 9.2 (9.2.148 Update 1) 	>= 396.37 	>= 398.26
CUDA 9.2 (9.2.88) 	>= 396.26 	>= 397.44
**CUDA 9.1 (9.1.85) 	>= 390.46 	>= 391.29**
CUDA 9.0 (9.0.76) 	>= 384.81 	>= 385.54
CUDA 8.0 (8.0.61 GA2) 	>= 375.26 	>= 376.51
CUDA 8.0 (8.0.44) 	>= 367.48 	>= 369.30
CUDA 7.5 (7.5.16) 	>= 352.31 	>= 353.66
CUDA 7.0 (7.0.28) 	>= 346.46 	>= 347.62

Keep in mind that you can't have CUDA version greater than 9.1 and let's continue...

## Install tensorflow-gpu

```
$ sh tensorflow_prep.sh
```

## Last Considerations

If you a curious guy and looked inside the script above, you have seen a downgrade command of cudatoolkit. It's because, as shown above, you can't have
a CUDA version greater than 9.1 and when you install the tensorflow-gpu 1.10.0 version, Conda install the 9.2 version of cudatoolkit.
