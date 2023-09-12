export bench=soma
export type=ICL-t

for i in $(seq 12 33)
do  
  likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2400000-2400000:performance" -np $i -nperdomain N:$i -g MEM_DP ./$bench -r 42 -t 200 --npoly=14000000 --gen-state-file &> $HOME/$type/$bench-FritzRank$i-MEM_DP.txt
 
done

