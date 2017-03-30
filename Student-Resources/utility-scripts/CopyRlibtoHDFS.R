
# Copy User Library to HDFS -----------------------------------------------

rxHadoopMakeDir("/Rlib/")
rxHadoopCopyFromLocal(.libPaths()[1], "/Rlib/")


# Copy HDFS Library to User -----------------------------------------------

rxHadoopCopyToLocal("/Rlib/*", .libPaths()[1])