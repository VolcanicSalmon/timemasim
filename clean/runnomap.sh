#!/bin/bash
sadom=$(../../genrecessrand 0)
benedom=$(../../genrecessrand 1)
deledom=$(../../genrecessrand 2)
delemean=$(../../genrand10)
fneu=$(../../genrand01 0)
fdel=$(../../genrand01 1)
fpos=$(../../genrand01 2)
benemean=$(../../genrand01 3)
sasc=$1
a=$2
aorx=$3
slim -d "aorx='${aorx}'" -d N=2000 -d "coordfile='none'" -d benedom=$benedom -d deledom=$deledom -d delemean=$delemean -d benemean=$benemean -d fneu=$fneu -d fdel=$fdel -d fpos=$fpos -d "recmapfile='none'" null.slim
slim -d "aorx='${aorx}'" -d burnin=10000 -d a=0.05 -d N=2000 -d "coordfile='none'" -d sadom=$sadom -d sasc=$sasc -d benedom=$benedom -d deledom=$deledom -d delemean=$delemean -d benemean=$benemean -d fneu=$fneu -d fdel=$fdel -d fpos=$fpos -d a=$a -d "recmapfile='none'" m4m5_neutinonesex.slim
slim -d "aorx='${aorx}'" -d burnin=10000 -d a=0.05 -d N=2000 -d "coordfile='none'" -d sadom=$sadom -d sasc=$sasc -d benedom=$benedom -d deledom=$deledom -d delemean=$delemean -d benemean=$benemean -d fneu=$fneu -d fdel=$fdel -d fpos=$fpos -d a=$a -d "recmapfile='none'" bottle_dom_sel.slim
slim -d "aorx='${aorx}'" -d burnin=10000 -d a=0.05 -d N=2000 -d "coordfile='none'" -d sadom=$sadom -d sasc=$sasc -d benedom=$benedom -d deledom=$deledom -d delemean=$delemean -d benemean=$benemean -d fneu=$fneu -d fdel=$fdel -d fpos=$fpos -d a=$a -d "recmapfile='none'" m4m5_sawithburnin.slim
slim -d "aorx='${aorx}'" -d burnin=10000 -d a=0.05 -d N=2000 -d "coordfile='none'" -d sadom=$sadom -d sasc=$sasc -d benedom=$benedom -d deledom=$deledom -d delemean=$delemean -d benemean=$benemean -d fneu=$fneu -d fdel=$fdel -d fpos=$fpos -d a=$a -d "recmapfile='none'" m4m5_safromstart.slim
slim -d "aorx='${aorx}'" -d burnin=10000 -d a=0.05 -d N=2000 -d "coordfile='none'" -d sadom=$sadom -d sasc=$sasc -d benedom=$benedom -d deledom=$deledom -d delemean=$delemean -d benemean=$benemean -d fneu=$fneu -d fdel=$fdel -d fpos=$fpos -d a=$a -d "recmapfile='none'" m5m5addnewdrawn.slim
