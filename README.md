
Create an app
```
fly apps create my-llama-app
```

Launch a machine
```
fly m run -a my-llama-app --region ord --vm-size l40s .
```

Once it is started, ssh into it:
```
fly ssh console -a my-llama-app -s
```

and run test codes:
```
/code/test-cuda.py
# and
/code/test-llamacpp.py
```

check machine logs with
```
fly logs -a my-llama-app
```
