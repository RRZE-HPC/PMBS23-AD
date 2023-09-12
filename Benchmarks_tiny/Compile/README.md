## How to compile
* Configure using `config.mk`. 
* For using LIKWID: 
    * Installing LIKWID (https://github.com/RRZE-HPC/likwid) is required.
    * In `config.mk`, `ENABLE_LIKWID` must be set to true.
    * In `include_LIKWID.mk`, the correct paths must be set.
* After configuration, run make to compile.

