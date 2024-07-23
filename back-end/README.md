# Back-end Project
## Build From Source

**Install required dependencies**
[openssl](https://github.com/openssl/openssl)

```shell
# Ubuntu
$ apt-get install libssl-dev openssl
```

[zlog](https://github.com/HardySimpson/zlog.git)
```shell
$ git clone -b 1.2.15 https://github.com/HardySimpson/zlog.git
$ cd zlog
$ make && sudo make install
```

[jansson](https://github.com/neugates/jansson.git)
```shell
$ git clone https://github.com/neugates/jansson.git
$ cd jansson && mkdir build && cd build
$ cmake -DJANSSON_BUILD_DOCS=OFF -DJANSSON_EXAMPLES=OFF ..&& make && sudo make install
```

[mbedtls](https://github.com/ARMmbed/mbedtls.git)
```shell
$ git clone -b v2.16.12 https://github.com/Mbed-TLS/mbedtls.git
$ cd mbedtls && mkdir build && cd build
$ cmake -DUSE_SHARED_MBEDTLS_LIBRARY=OFF -DENABLE_TESTING=OFF -DCMAKE_POSITION_INDEPENDENT_CODE=ON .. && make && sudo make install
```

[NanoSDK](https://github.com/neugates/NanoSDK.git)
```shell
$ git clone -b neuron https://github.com/neugates/NanoSDK.git
$ cd NanoSDK && mkdir build && cd build
$ cmake -DBUILD_SHARED_LIBS=OFF -DNNG_TESTS=OFF -DNNG_ENABLE_SQLITE=ON -DNNG_ENABLE_TLS=ON .. && make && sudo make install
```

[jwt](https://github.com/benmcollins/libjwt.git)
```shell
$ git clone -b v1.13.1 https://github.com/benmcollins/libjwt.git
$ cd libjwt && mkdir build && cd build
$ cmake -DENABLE_PIC=ON -DBUILD_SHARED_LIBS=OFF .. && make && sudo make install
```

[googletest](https://github.com/google/googletest.git)
```shell
$ git clone -b release-1.11.0 https://github.com/google/googletest.git 
$ cd googletest && mkdir build && cd build
$ cmake .. && make && sudo make install
```

[sqlite](https://github.com/sqlite/sqlite)
```shell
$ curl -o sqlite3.tar.gz https://www.sqlite.org/2022/sqlite-autoconf-3390000.tar.gz
$ mkdir sqlite3
$ tar xzf sqlite3.tar.gz --strip-components=1 -C sqlite3
$ cd sqlite3
$ ./configure CFLAGS=-fPIC && make && sudo make install
```

**Build**

```
$ git clone https://github.com/emqx/neuron
$ cd neuron
$ mkdir build && cd build
$ cmake .. && sudo make
```

## Usage
```
$ ./neuron --log --disable_auth
```
or
```
$ ./brain
```
**Access: {IP}:7777**
**User: admin**
**Password: 0000**
## Preview
![image](https://github.com/user-attachments/assets/68717509-fae3-4912-9b24-10c39b4898da)
![image](https://github.com/user-attachments/assets/064f2501-be9b-4e45-8265-ccf38eae3100)


