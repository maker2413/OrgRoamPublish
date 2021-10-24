#!/bin/bash

mkdir -p /opt/OrgFiles/web-pages

emacs -Q --script /opt/publish.el
