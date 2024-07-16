import pandas as pd
import numpy as np
import matplotlib.pyplot as plt



# rep 0 file ../smtlib-fsm/loop-p2/fsm_10states_1loops.smtunsat
# (:added-eqs                 5
#  :arith-assert-lower        1
#  :arith-assert-upper        1
#  :arith-eq-adapter          4
#  :arith-num-rows            2
#  :arith-pivots              1
#  :arith-row-summations      1
#  :arith-tableau-max-columns 17
#  :arith-tableau-max-rows    2
#  :binary-propagations       13
#  :conflicts                 1
#  :max-generation            2
#  :max-memory                19.50
#  :memory                    19.03
#  :mk-bool-var               77
#  :mk-clause                 28
#  :num-allocs                389513
#  :num-checks                1
#  :propagations              14
#  :quant-instantiations      23
#  :rlimit-count              9274
#  :time                      0.01
#  :total-time                0.02)

reps = 10


# Function to parse the input file and compute average total-time
def parse_file(filename):
    f = open(filename, "r")
    states = []
    times = []
    tmp_time = []


    for l in f.readlines():
        if "rep" in l:
            tmp_state = int(l.split(" ")[3].split("/")[3].split("_")[1].split("s")[0])
        if "total-time" in l:
            tmp_time.append(float(l.split(" ")[-1].split(")")[0]))
            if len(tmp_time) == reps:
                times.append(np.average(tmp_time))
                states.append(tmp_state)
                tmp_time.clear()

    df = pd.DataFrame({'#states':states, 'total_time':times})

    df1 = df.sort_values(by='#states')

    print(df1)
    return df1

# Main execution
if __name__ == "__main__":
    loop_p2u = parse_file('z3-loop-p2-unsat-eq.txt')
    lin_p2u = parse_file('z3-lin-p2-unsat-eq.txt')

    merged_df = pd.merge(loop_p2u, lin_p2u, on='#states', suffixes=('_loop', '_lin'))

    plt.figure(figsize=(10, 5))
    plt.plot(merged_df['#states'], merged_df['total_time_loop'], label='1-loop', marker='o')
    plt.plot(merged_df['#states'], merged_df['total_time_lin'], label='lin', marker='o')
    plt.xlabel('#states')
    plt.ylabel('Total Time')
    plt.title('Total Time vs. #states')
    plt.legend()
    plt.tight_layout()
    plt.savefig("z3-lin-loop-unsat-p2.png")
