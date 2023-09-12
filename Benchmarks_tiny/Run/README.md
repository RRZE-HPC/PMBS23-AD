## How to run
* Get configuration options using `${bench}.in` or `control` file available in each benchmark.
* Run executable using 
  * frequencies fixing to the base values of their respective CPUs and disable turbo mode via the SLURM batch scheduler
  * process-core affinity via the likwid-mpirun startup wrapper
  * workload-specific config options (either `tiny` or `small` workload)
```
 ./${exec} ${config-opt}
```
