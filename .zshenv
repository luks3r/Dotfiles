# Export PATH to sub-processes
export PATH

# Custom scripts
export PATH=$PATH:$HOME/.local/bin

# Skip the not really helping Ubuntu global compinit
export skip_global_compinit=1

# Android SDK
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
