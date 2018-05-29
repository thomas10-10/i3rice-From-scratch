# i3rice-From-scratch
make i3 and polybar rice from empty system\

<img src="https://raw.githubusercontent.com/thomas10-10/i3rice-From-scratch/master/config1/config1.jpg"  />





# Prerequites
1. Debian (tested on debian stretch)
2. Connection internet estabished with dns resolving worked
2. Depot debian
``` 
deb [arch=amd64] http://httpredir.debian.org/debian          stable         main
deb [arch=amd64] http://security.debian.org/ stable/updates main    
```

# Warnings
~/.config will erase by this new config

# Setup
copy config1.sh in your ~ 
then

``` 
cd ~
curl https://raw.githubusercontent.com/thomas10-10/i3rice-From-scratch/master/config1/config1.sh > config1.sh
chmod +x config1.sh
./config1.ch 
DISPLAY=:0 i3
```


# contributes
Thanks to : A guide to replicating my riced Arch Linux set-up. https://github.com/IbrahimButt/direwolf-arch-rice\
Wallpapers : find author
