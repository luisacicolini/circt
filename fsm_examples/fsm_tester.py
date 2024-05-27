import numpy as np
import subprocess 
import os

reps = 5

time = 100

for file in os.listdir("linear/"):
    print(file)
    command = "../build/bin/fsm-verification ../fsm_examples/linear/"+file+" "+str(time)+" 1 _0 0 0 ../fsm_examples/smt_models/"+file.split(".mlir")[0]+".smt"
    print(command)
    for i in range(reps):
        print("rep "+ str(i)+" file "+file)
        process = subprocess.run([command], shell=True)

