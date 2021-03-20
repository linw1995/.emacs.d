#!/usr/bin/env bash
echo $1 >>/tmp/emacs-org-roam-protocol.log
/usr/local/bin/emacsclient --no-wait $1 >/tmp/emacs-org-roam-protocol-launch.log
