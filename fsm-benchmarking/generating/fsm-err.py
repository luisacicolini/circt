# generates a counter with one unreachable state and 2 to 5 loops

import numpy as np

num_fsm = range(10, 500, 10)

guard_type = ["comb.icmp eq %", "comb.icmp ne %"]

action = "comb.add %"

for n in num_fsm:

    loops = []

    const = []

    nl = 0# np.random.randint(2, n-1)

    print("num loops: "+str(nl))

    while len(loops)<nl:
        tmp = np.random.randint(2, n)
        if tmp not in loops:
            loops.append(tmp)


    output_file = "../fsm/err/fsm_"+str(n)+"states_"+str(nl)+"loops.mlir"
    f = open(output_file, "w")


    vars = []
    rows = []
    cols = []
    guards = []
    actions = []
    guard_vals = []

    # initialize variables

    var = "x0"

    for s in range(n):
        rows.append(s)
        cols.append(s+1)

        print("from "+str(s)+" to "+str(s+1))

    print("transitions: "+str(len(rows)))
    print("guards: "+str(len(guards)))
    print("actions: "+str(len(actions)))

    f.write("fsm.machine @fsm"+str(n)+"(%err: i16) -> () attributes {initialState = \"_0\"} {\n")
    f.write("\t%x0 = fsm.variable \"x0\" {initValue = 0 : i16} : i16\n")
    for c in const:
        f.write("\t%c"+str(c)+" = hw.constant "+str(c)+" : i16\n")
    f.write("\t%c1 = hw.constant 1 : i16\n")
    f.write("\t%c0 = hw.constant 0 : i16\n")


    for st in range(n):
        f.write("\n\n\tfsm.state @_"+str(st)+" output {\n\t} transitions {")
        for i in range(len(rows)):
            if rows[i] == st:
                f.write("\n\t\tfsm.transition @_"+str(cols[i]))
                f.write("\n\t\t\tguard {")
                f.write("\n\t\t\t\t%tmp1 = comb.icmp ne %err, %c1 : i16")
                f.write("\n\t\t\t\tfsm.return %tmp1")
                f.write("\n\t\t\t} action {")
                f.write("\n\t\t\t\t%tmp = "+action+"x0, %c1 : i16")
                f.write("\n\t\t\t\tfsm.update %x0, %tmp : i16")
                f.write("\n\t\t\t}")
        # always add error transition
        f.write("\n\t\tfsm.transition @ERR")
        f.write("\n\t\t\tguard {")
        f.write("\n\t\t\t\t%tmp1 = comb.icmp eq %err, %c1 : i16")
        f.write("\n\t\t\t\tfsm.return %tmp1")
        f.write("\n\t\t\t}")
        f.write("\n\t}")
    
    # last state
    f.write("\n\n\tfsm.state @_"+str(n)+" output {\n\t} transitions {\n\t}")
    f.write("\n\n\tfsm.state @ERR output {\n\t} transitions {\n\t}")
        
    # non reachable state

    # f.write("\n\n\tfsm.state @_nr output {\n\t} transitions {")
    # f.write("\n\t\tfsm.transition @_0")
    # f.write("\n\t}")

    f.write("\n}")

    f.close()

    