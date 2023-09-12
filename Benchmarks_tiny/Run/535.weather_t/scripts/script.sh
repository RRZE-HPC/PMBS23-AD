
export bench=weather
export type=ICL-t

for i in $(seq 33 72)
do  
  likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2400000-2400000:performance" -np $i -nperdomain N:$i -g MEM_DP ./$bench output6.ref.txt 24000 10000 3000 1250 600 100 6 &> $HOME/$type/$bench-FritzRank$i-MEM_DP.txt
done
