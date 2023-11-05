# hello-fis

## Nots

## Results

### `fis_network_connectivity.tf`

```
$ ping 8.8.8.8

...
64 bytes from 8.8.8.8: icmp_seq=174 ttl=58 time=1.71 ms
64 bytes from 8.8.8.8: icmp_seq=235 ttl=58 time=1.65 ms
...
```
(packet loss)

- noted VPC ACL Allow Rule was removed then re-added


```
{"id":"EXP24oCUSBeR8hcRKHk","log_type":"experiment-start","event_timestamp":"2023-11-05T18:50:25.188Z","version":"2","details":{"experiment_template_id":"EXTjfRa1h8LAFcc","experiment_start_time":"2023-11-05T18:50:23.886Z"}}
{"id":"EXP24oCUSBeR8hcRKHk","log_type":"target-resolution-end","event_timestamp":"2023-11-05T18:50:25.568Z","version":"2","details":{"target_resolution_end_time":"2023-11-05T18:50:25.568Z","target_name":"hello-fis","target_type":"aws:ec2:subnet","resolved_targets":[{"arn":"arn:aws:ec2:us-east-1:123456:subnet/subnet-09da63d79387d3559"}],"page":1,"total_pages":1}}
{"id":"EXP24oCUSBeR8hcRKHk","log_type":"target-resolution-start","event_timestamp":"2023-11-05T18:50:25.442Z","version":"2","details":{"target_resolution_start_time":"2023-11-05T18:50:25.441Z","target_name":"hello-fis"}}
{"id":"EXP24oCUSBeR8hcRKHk","log_type":"action-start","event_timestamp":"2023-11-05T18:50:36.556Z","version":"2","details":{"action_name":"DisruptConnectivity","action_id":"aws:network:disrupt-connectivity","action_start_time":"2023-11-05T18:50:36.545Z","action_targets":{"Subnets":"hello-fis"},"parameters":{"duration":"PT1M","scope":"all"}}}
{"id":"EXP24oCUSBeR8hcRKHk","log_type":"action-end","event_timestamp":"2023-11-05T18:51:38.199Z","version":"2","details":{"action_name":"DisruptConnectivity","action_id":"aws:network:disrupt-connectivity","action_end_time":"2023-11-05T18:51:38.187Z","action_state":{"status":"completed","reason":"Action was completed."}}}
```