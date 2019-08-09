# Set up MAP environment

```
$ source set_env.sh
$ /tigress/LICENSED/ddt/ddt18.0.2/rhel6/x86_64/map/wrapper/build_wrapper
```

# Compile the code
You need to compile with the `-g` option to see the code in `MAP`

```
$ mpicc -g -o sqrtmax sqrtmax.c
```

# Submit the SLURM script

```
$ sbatch submit_script.sh
```

# Looking at the results from MAP on your local machine
- The run should create a MAP file e.g. `sqrtmax_4p_1n_2019-08-09_12-16.map`.
- Now you can `scp` the file onto your local machine (e.g. laptop)
  and look at the MAP results.
- If you don't have `MAP` on your local machine, you can install it from this link:
  [Arm Forge](https://developer.arm.com/tools-and-software/server-and-hpc/arm-architecture-tools/arm-forge).
- You will need to copy the source on your local machine as well to be able to see the code on your machine.

