all:  last_hour

figures:
	mkdir figures

last_hour: figures
	wget http://cclc01.ucsf.edu/ganglia/graph.php?g=load_report&z=medium&c=cclc01&m=load_one&r=hour -o figures/cpu_load_last_hour.gif
