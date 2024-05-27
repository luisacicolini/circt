import numpy as np
import subprocess 
import matplotlib.pyplot as plt
import os
import pandas as pd

reps = 5

# outputfile = open("bitvec_res_log.txt", "w")

# for file in os.listdir("smt_models/"):
#     print(file)
#     command = "~/bitwuzla/build/src/main/bitwuzla ~/circt/fsm_examples/smt_models/"+file+" -v 1"
#     print(command)
#     for i in range(reps):
        
#         outputfile.write("tester rep "+ str(i)+" file "+file)
#         process = subprocess.run([command], shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)

#         outputfile.write(process.stdout.decode("utf-8"))

# parse outputfile 

col = [#"#f0f9e8",
# "#ccebc5",
# "#a8ddb5",
"#7bccc4",
"#43a2ca",
# "#0868ac"
]


outputfile = open("bitvec_res_log.txt", "r")

lines = outputfile.readlines()

states = []
times = []

reps = 5

tmp_times = []

for l in lines:
    if "tester rep" in l: 
        current_filename = int(l.split(" ")[4].split("[")[0].split("_")[1].split("s")[0])
    if "solving_context::time_solve:" in l:
        tmp_times.append(float(l.split(" ")[1].split("m")[0])/1000)
    if(len(tmp_times)==reps):
        states.append(current_filename)
        times.append(np.average(tmp_times))
        tmp_times=[]


bitvec_z3 = open("output.txt", 'r')

z3lines = bitvec_z3.readlines()

z3states = []
z3times = []


tmp_times = []


# fsm_80states_0loops,0.121731,0


for l in z3lines:
    current_filename = int(l.split(",")[0].split("_")[1].split("s")[0])
    print(current_filename)
    tmp_times.append(float(l.split(",")[1]))
    if(len(tmp_times)==reps):
        z3states.append(current_filename)
        z3times.append(np.average(tmp_times))
        print(tmp_times)
        tmp_times=[]


int_z3 = open("output.txt", 'r')

z3lines_int = int_z3.readlines()

z3states = []
z3times = []


tmp_times = []


# fsm_80states_0loops,0.121731,0


for l in z3lines:
    current_filename = int(l.split(",")[0].split("_")[1].split("s")[0])
    print(current_filename)
    tmp_times.append(float(l.split(",")[1]))
    if(len(tmp_times)==reps):
        z3states.append(current_filename)
        z3times.append(np.average(tmp_times))
        print(tmp_times)
        tmp_times=[]




df1 = pd.DataFrame({'states':states, 't':times})
df1o=df1.sort_values(by=['states'])

df2 = pd.DataFrame({'states':z3states, 't':z3times})
df2o=df2.sort_values(by=['states'])


dft = pd.DataFrame({'states':df1o['states'].tolist(), 'fsmt-bitwuzla':df1o['t'].tolist(), 'fsmt-z3':df2o['t'].tolist()})

plot = dft.plot(x='states', color=col, title='bitwuzla vs. fsmt-bitvector')

plt.xlabel('#states')
plt.ylabel('time [s]')
plt.tight_layout()


plt.savefig("bv-comparison.pdf")
