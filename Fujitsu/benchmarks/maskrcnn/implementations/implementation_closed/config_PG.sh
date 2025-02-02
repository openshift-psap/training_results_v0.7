#!/bin/bash

## DL params
EXTRA_PARAMS=""
EXTRA_CONFIG=(
               "SOLVER.BASE_LR"       "0.06"
               "SOLVER.MAX_ITER"      "80000"
               "SOLVER.WARMUP_FACTOR" "0.000096"
               "SOLVER.WARMUP_ITERS"  "625"
               "SOLVER.WARMUP_METHOD" "mlperf_linear"
               "SOLVER.STEPS"         "(24000, 32000)"
               "SOLVER.IMS_PER_BATCH"  "48"
               "TEST.IMS_PER_BATCH" "8"
               "MODEL.RPN.FPN_POST_NMS_TOP_N_TRAIN" "6000"
               "NHWC" "True"   
             )

## System run parms
PGNNODES=1
PGSYSTEM=$(basename $(readlink -f ${BASH_SOURCE[0]}) | sed 's/^config_//' | sed 's/\.sh$//' )
WALLTIME=07:00:00

## System config params
PGNGPU=8
PGSOCKETCORES=24
PGNSOCKET=2
PGHT=2         # HT is on is 2, HT off is 1
PGIBDEVICES=''
BIND_LAUNCH=1
