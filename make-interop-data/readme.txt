To use the VagrantFile

First:
  - Install Virtual Box: https://www.virtualbox.org/wiki/Downloads
  - Install Vagrant: http://downloads.vagrantup.com/

Next:
  - cd into make-interop-data
  - `vagrant up`, if first time will download box, and provision 
      with build tools
  - `vagrant ssh`, logs you into the box
  - `cd /vagrant`, takes you to the shared directory
  - `./checkout-build-test-data.sh` clones, builds, tests, and generates
       new data

Finally:
  There will be 3 new folders
    - clones, which is the checked out versions of keyczar
    - logs, which has the logs for every step and build of keyczar
    - gen-interop-data, which has the new interop-data

You can then:
  - `exit` logs you out
And
  - `vagrant suspend` suspends the vm
Or if you are really done or you want the vm to be reprovisioned next time you use it
  - `vagrant destroy` destroys the provision

Also if you want to run commands interactively,
so you can modify and custom patch inside vagrant:

    - scripts/1_clean-checkout.sh
    - scripts/2_clone-sources.sh  
    - scripts/3_build-test-sources.sh
        - scripts/build/cpp.sh
        - scripts/build/dotnet.sh
        - scripts/build/go.sh
        - scripts/build/java.sh
        - scripts/build/python.sh
        - scripts/build/python3.sh
    - scripts/4_keyczar-make-data.sh
