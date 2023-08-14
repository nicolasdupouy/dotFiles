# dotFiles (Debian)

**NB:** *<DOT_FILES_REPOSITORY>* must be replaced by the Git directory.

## Conky
### Links
`ln -s <DOT_FILES_REPOSITORY>/Conky/.conkyrc ~/.conkyrc`

### Launch at Gnome startup
#### In your profile:
`export PYTHONPATH=$PYTHONPATH:<DOT_FILES_REPOSITORY>/Conky/scripts`

#### Prepare the startup application:
`cp <DOT_FILES_REPOSITORY>/Conky/startup/* ~/.config/autostart`

*<DOT_FILES_REPOSITORY>* must be set in conky-startup-script.sh.

Then use gnome-tweak-tool to add the application at the Gnome Shell startup.
