# NURO case study

NURO case study is designed for validation of http://www.seaclouds-project.eu/

This is a clone of the SeaClouds - NURO CaseStudy SVN repository


See Deliverable D6.3.1, D6.3.2 and D6.3.3 for details.

Additional resources can be found here: http://seaclouds-dev.nurogames.com/nuro-casestudy/

## Packages

Each package has a ZIP and a folder. The ZIP is the plain module for deployment.
Within the folders you can find additional files suitable for cloud foundry and other.

Be carefull with diagnostic.php and info.php. They provide system information, this is a security risc.

1. nuro-api.zip - nuro-api

  This is the NURO API, usable as game server plugin and stand alone.


1. nuro-gui.zip - nuro-gui

  This is the NURO GUI, usble for benchmarking and simulation of an API deployment.


1. nuro-casestudy_current.zip - nuro-all

  This is NURO API + NURO GUI for single node deployment.


1. cf-ex-phpmyadmin4sc.zip - cf-ex-phpmyadmin4sc

  This is for cloud foundry PaaS deployment onely and is based on https://github.com/dmikusa-pivotal/cf-ex-phpmyadmin

  The configuration is extended for SeaClouds environmental configuration.

  info.php for diagnostics is added.


## Game

Android and Windows Version are avaiable.
