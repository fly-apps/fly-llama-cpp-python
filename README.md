
Create an app
```
fly apps create my-llama-app
```

Launch a machine
```
fly m run --region ord --vm-size l40s .
```

Once it is started, ssh into it:
```
fly ssh console -s
```

and run test codes:
```
/code/test-cuda.py
# and
/code/test-llamacpp.py
```

check machine logs with
```
fly logs
```

if by any case you see an error message about missing devices:
```
[info]ERROR Error: an unhandled error occurred: No such device (os error 19)
```

force a machine update with:
```
fly m update --metadata foo=any MACHINEID
```

