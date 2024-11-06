# Docker Webrtc Builder

## Docker run requirement
```
docker build -t name/container .
```

## Run docker bash
```
docker exec -t -i name/container /bin/bash
```

## Gclient depotools sync and build
```
fetch —nohooks webrtc_android
```

```
gclient sync --verbose
```

## Compiling
```
cd src
```

```
gn gen out/Debug --args='target_os="android" target_cpu="arm"'
```

You can specify a directory of your own choice instead of out/Debug, to enable managing multiple configurations in parallel.

```
- To build for ARM64: use target_cpu="arm64"
- To build for 32-bit x86: use target_cpu="x86"
- To build for 64-bit x64: use target_cpu="x64"
```

## Compiling using ninja 
```
ninja -C out/Debug
```