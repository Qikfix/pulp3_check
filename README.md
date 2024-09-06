# pulp3_check

Script to verify the pulp task status in real time. Basically, you can pick the task in question, and then you will be able to see, every 3 seconds, the current status of all the sub tasks/activities.

To download it
```
wget https://raw.githubusercontent.com/Qikfix/pulp3_check/main/pulp3_check.sh
chmod +x pulp3_check.sh
./pulp3_check.sh
```

When executing the script, in case there are tasks different from completed, then it will be visible in the list, as below

```
./pulp3_check.sh
-[ RECORD 1 ]---------------------------------------------
pulp_id     | 0191c590-a2e9-734d-8d66-27d6337328dc
name        | pulp_rpm.app.tasks.synchronizing.synchronize
started_at  | 2024-09-06 04:21:16.256139+00
finished_at |
state       | running


Copy/Paste the ID you would like to inspect (e.g. 0191be1a-2f17-7f80-9af6-4b58404b93af):
```

With that, you can copy/paste the UUID, and start checking
```
./pulp3_check.sh
-[ RECORD 1 ]---------------------------------------------
pulp_id     | 0191c590-a2e9-734d-8d66-27d6337328dc
name        | pulp_rpm.app.tasks.synchronizing.synchronize
started_at  | 2024-09-06 04:21:16.256139+00
finished_at |
state       | running


Copy/Paste the ID you would like to inspect (e.g. 0191be1a-2f17-7f80-9af6-4b58404b93af): 0191be1a-2f17-7f80-9af6-4b58404b93af
0191be1a-2f17-7f80-9af6-4b58404b93af
### Press CTRL+C to STOP! ###
       pulp_last_updated       |          message           |   state   | total | done  |               task_id
-------------------------------+----------------------------+-----------+-------+-------+--------------------------------------
 2024-09-04 17:34:34.475236+00 | Associating Content        | running   |       |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:34:52.088005+00 | Downloading Metadata Files | completed |       |    11 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.110596+00 | Parsed Modulemd            | completed |   840 |   840 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.235671+00 | Parsed Modulemd-defaults   | completed |    49 |    49 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.254503+00 | Parsed Modulemd Obsolete   | completed |     0 |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:16.645392+00 | Skipping Packages          | completed |     0 |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:41:19.369212+00 | Downloading Artifacts      | running   |       |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:41:21.775575+00 | Parsed Packages            | running   | 39368 | 21981 | 0191be1a-2f17-7f80-9af6-4b58404b93af
(8 rows)

### Press CTRL+C to STOP! ###
       pulp_last_updated       |          message           |   state   | total | done  |               task_id
-------------------------------+----------------------------+-----------+-------+-------+--------------------------------------
 2024-09-04 17:34:34.475236+00 | Associating Content        | running   |       |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:34:52.088005+00 | Downloading Metadata Files | completed |       |    11 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.110596+00 | Parsed Modulemd            | completed |   840 |   840 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.235671+00 | Parsed Modulemd-defaults   | completed |    49 |    49 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.254503+00 | Parsed Modulemd Obsolete   | completed |     0 |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:16.645392+00 | Skipping Packages          | completed |     0 |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:41:19.369212+00 | Downloading Artifacts      | running   |       |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:41:21.775575+00 | Parsed Packages            | running   | 39368 | 21981 | 0191be1a-2f17-7f80-9af6-4b58404b93af
(8 rows)

...

### Press CTRL+C to STOP! ###
       pulp_last_updated       |          message           |   state   | total | done  |               task_id
-------------------------------+----------------------------+-----------+-------+-------+--------------------------------------
 2024-09-04 17:34:34.475236+00 | Associating Content        | running   |       |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:34:52.088005+00 | Downloading Metadata Files | completed |       |    11 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.110596+00 | Parsed Modulemd            | completed |   840 |   840 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.235671+00 | Parsed Modulemd-defaults   | completed |    49 |    49 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.254503+00 | Parsed Modulemd Obsolete   | completed |     0 |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:16.645392+00 | Skipping Packages          | completed |     0 |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:42:30.438091+00 | Downloading Artifacts      | running   |       |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:42:31.531686+00 | Parsed Packages            | running   | 39368 | 25491 | 0191be1a-2f17-7f80-9af6-4b58404b93af
(8 rows)

...

### Press CTRL+C to STOP! ###
       pulp_last_updated       |          message           |   state   | total | done  |               task_id
-------------------------------+----------------------------+-----------+-------+-------+--------------------------------------
 2024-09-04 17:34:52.088005+00 | Downloading Metadata Files | completed |       |    11 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.110596+00 | Parsed Modulemd            | completed |   840 |   840 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.235671+00 | Parsed Modulemd-defaults   | completed |    49 |    49 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:09.254503+00 | Parsed Modulemd Obsolete   | completed |     0 |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:35:16.645392+00 | Skipping Packages          | completed |     0 |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:46:30.51604+00  | Parsed Packages            | completed | 39368 | 39368 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:46:30.615782+00 | Parsed Comps               | completed |    68 |    68 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:48:17.427082+00 | Parsed Advisories          | completed |  3894 |  3894 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:48:52.176426+00 | Downloading Artifacts      | completed |       |     0 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:49:02.6011+00   | Un-Associating Content     | completed |       |  2282 | 0191be1a-2f17-7f80-9af6-4b58404b93af
 2024-09-04 17:49:02.609008+00 | Associating Content        | completed |       |  2324 | 0191be1a-2f17-7f80-9af6-4b58404b93af
(11 rows)
```
Note that above, we were able to see the column state, total, and done. Once we get completed on state column, you can double check the total and done, just to be sure that the numbers are matching.

You can type `CTRL+C` to stop.

Note that you can also execute the task, and it will appear in the list. However, when checking the state, all the rows will be presented as completed. In this case, this task is still up and running on foreman/katello end and has nothing to do with pulp anymore.


Once there is no tasks, the expected output should be as below
```
./pulp3_check.sh
No tasks at this moment, exiting ...
```

## Note. This script works on both, Satellite Server and Capsule Server.


I hope you enjoy it!