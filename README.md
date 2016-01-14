Hubot Vagrant Machine
=====================

This is a vagrant virtual machine with a [Hubot](https://hubot.github.com/) instance.

You can use it to play around with [Hubot](https://hubot.github.com/). It is not meant for any production usage.

Installation
------------

To get it working, you will need to first install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
and [Vagrant](https://www.vagrantup.com). Once you have these installed, clone
(or download) [this repository](https://github.com/dixudx/hubot-vagrant.git).

```bash
$ cd /to/your/directory
$ git clone https://github.com/dixudx/hubot-vagrant.git
$ cd hubot-vagrant
$ vagrant up
```

On the first run this might take some time and will download a large vm image.
After some time, you will get a running instance of [Hubot](https://hubot.github.com/).

Manage the Instance
-------------------

If you finished working, just enter `vagrant destroy` to throw away everything you
did (*Attention:* This will clear all actions you performed on the vm.) and you can start over again
the next time with `vagrant up` to bring up a fresh virtual machine.

If you just want to shutdown the virtual machine without destroying your
data use `vagrant suspend` and `vagrant resume` to start it again. In this
case all your data changes on the [Hubot](https://hubot.github.com/) will be persisted.

Configuration
-------------

There is a configuration file called `config.yaml` that you can edit with a text editor, to change
some settings.

Set the `32bit` option to `true` if you run on a system, that only supports 32bit virtualization or
would like to test the 32 bit version for any other reason. You should normally not need this.

You can specify the amount of **memory** used by the virtual machine. It is set to `2048` (MB) by default,
since I think this is a good value that would work for the most users. If you however have very low memory
you can try to decrease this value or increase it, if you have enough memory left in your system.

Also you can customize the Hubot with below parameters.

| Hubot Option  | Description                                       |
|---------------|---------------------------------------------------|
| owner         | Bot owner, e.g. "Bot Wrangler bw@example.com"     |
| name          | Bot name, e.g. "Hubot"                            |
| description   | Bot description, e.g. "Delightfully aware robutt" |
| adapter       | Bot adapter, e.g. "shell"                         |
