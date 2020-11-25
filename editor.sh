#!/bin/bash
#https://github.com/Bad-ptr/persp-mode.el#launch-emacs-to-quickly-edit-a-file-without-perspectives-loadingsaving
emacs -nw --eval '(setq persp-auto-resume-time -1.0 persp-auto-save-opt 0)' $@;
