# bash-utils

```
mkdir ~/.shell_config
```


``` 
cd ~/.shell_config 
```

git clone in current directory

``nano ~/.zshrc``
add following code

```
for f in ~/.shell_config/*.sh; do source $f; done

```
