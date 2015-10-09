# About

Example program of libhdfs, C(++) library to handle HDFS (Hadoop Distributed File System).

# Requirements
This example is customized to run out of the box for CDH users using parcels. It should be run on an edge node that has development tools installed.

# Compile & Run

```bash
$ ./compile.sh
$ ./exec.sh
```

# View the written file

```bash
$ hadoop fs -cat /tmp/testfile.txt
```

