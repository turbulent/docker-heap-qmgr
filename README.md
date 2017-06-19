# heap-qmgr Docker image.

Containerized heap-qmgr processes.

This image is based upon the `heap-base` Docker image.

## Usage

```
$ docker run -d heap-qmgr 
```

You can pass environment variables when launching the container:
```
$ docker run -d -e "VAR_HEAP_QUEUE_WORKERS=4" heap-qmgr 
```

## Environment variables

This image uses environment variables to override common configuration options.

The following environment variables are available (listed below with default values):

```
VAR_HEAP_QUEUE_WORKERS="3"
VAR_HEAP_QUEUE_NAME=""
```

## License

All work found under this repository is licensed under the [Apache
License 2.0](LICENSE).

