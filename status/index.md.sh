if [[ -z "$master_ping" ]]; then
  ping -c 1 cclc01.som.ucsf.edu &> /dev/null
  master_ping=$?
fi
echo "<!--"
echo "WARNING: do _not_ update this file; it is automatically generated from index.md.sh and will be overwritten."
echo "-->"
echo
echo "# Cluster Heartbeats"
echo
if [[ $master_ping -eq 0 ]]; then
    echo '<img src="https://img.shields.io/badge/master%3A%20ping-up-green.svg" alt="Master responds to ping">'
else
    echo '<img src="https://img.shields.io/badge/master%3A%20ping-down-red.svg" alt="Master does not respond to ping!">'
fi
echo

echo "# Cluster Usage"
echo
echo "## Total CPU Load"
echo
echo '<img src="https://raw.githubusercontent.com/UCSF-TI/TIPCC-slash/master/TIPCC/docs/status/figures/cpu_load_last_year.gif" alt="Total CPU load the last 12 months">'
echo '<img src="https://raw.githubusercontent.com/UCSF-TI/TIPCC-slash/master/TIPCC/docs/status/figures/cpu_load_last_month.gif" alt="Total CPU load the last 31 days">'
echo '<img src="https://raw.githubusercontent.com/UCSF-TI/TIPCC-slash/master/TIPCC/docs/status/figures/cpu_load_last_week.gif" alt="Total CPU load the last 7 days">'
echo '<img src="https://raw.githubusercontent.com/UCSF-TI/TIPCC-slash/master/TIPCC/docs/status/figures/cpu_load_last_day.gif" alt="Total CPU load the last 24 hours">'
echo '<img src="https://raw.githubusercontent.com/UCSF-TI/TIPCC-slash/master/TIPCC/docs/status/figures/cpu_load_last_hour.gif" alt="Total CPU load the last one hour">'
