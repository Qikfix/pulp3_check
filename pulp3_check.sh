#!/bin/bash


TASKS=$(pulp task list --state-in waiting --state-in skipped --state-in running --state-in failed --state-in canceled --state-in canceling | python3 -m json.tool | grep -E '(pulp_href|name|started_at|finished_at)')


if [ "$TASKS" == "" ]; then
  echo "No tasks at this moment, exiting ..."
  exit 1
else
  echo "$TASKS"
fi


echo -n "Copy/Paste the ID you would like to inspect (e.g. 0191be1a-2f17-7f80-9af6-4b58404b93af): "
read opc

echo $opc

while :
do
echo "### Press CTRL+C to STOP! ###"
echo "select pulp_last_updated,message,state,total,done,task_id from core_progressreport where task_id='$opc' order by pulp_last_updated" | su - postgres -c "psql pulpcore"
sleep 3
done
