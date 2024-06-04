{pkgs, ...}: {
  home.packages = [
    pkgs.foot
  ];

  xdg.configFile."foot/foot.ini".text = ''
   
  # -*- conf -*-

      font=Iosevka Nerd Font:size=15
     ## =========== Everforest - Dark - Medium ================= ##
    [colors]
    foreground=c6d0f5 # Text
    background=303446 # Base
    regular0=51576d   # Surface 1
    regular1=e78284   # red
    regular2=a6d189   # green
    regular3=e5c890   # yellow
    regular4=8caaee   # blue
    regular5=f4b8e4   # pink
    regular6=81c8be   # teal
    regular7=b5bfe2   # Subtext 1
    bright0=626880    # Surface 2
    bright1=e78284    # red
    bright2=a6d189    # green
    bright3=e5c890    # yellow
    bright4=8caaee    # blue
    bright5=f4b8e4    # pink
    bright6=81c8be    # teal
    bright7=a5adce    # Subtext 0
    [bell]
    # urgent=no
    # notify=no
    # command=
    # command-focused=no

    [scrollback]
    # lines=1000
    # multiplier=3.0
    # indicator-position=relative
    # indicator-format=""

    [url]
    # label-letters=sadfjklewcmpgh
    # osc8-underline=url-mode
    # protocols=http, https, ftp, ftps, file, gemini, gopher
    # uri-characters=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.,~:;/?#@!$&%*+="'()[]

    [cursor]
    # style=block
    # color=<inverse foreground/background>
    # blink=no
    # beam-thickness=1.5
    # underline-thickness=<font underline thickness>

    [mouse]
    # hide-when-typing=no
    # alternate-scroll-mode=yes

      # jump-labels=<regular0> <regular3>          # black-on-yellow
    # scrollback-indicator=<regular0> <bright4>  # black-on-bright-blue
    # search-box-no-match=<regular0> <regular1>  # black-on-red
    # search-box-match=<regular0> <regular3>     # black-on-yellow

    [csd]
    # preferred=server
    # size=26
    # font=<primary font>
    # color=<foreground color>
    # hide-when-typing=no
    # border-width=0
    # border-color=<csd.color>
    # button-width=26
    # button-color=<background color>
    # button-minimize-color=<regular4>
    # button-maximize-color=<regular2>
    # button-close-color=<regular1>

    [key-bindings]
    # scrollback-up-page=Shift+Page_Up
    # scrollback-up-half-page=none
    # scrollback-up-line=none
    # scrollback-down-page=Shift+Page_Down
    # scrollback-down-half-page=none
    # scrollback-down-line=none
    # clipboard-copy=Control+Shift+c XF86Copy
    # clipboard-paste=Control+Shift+v XF86Paste
    # primary-paste=Shift+Insert
    # search-start=Control+Shift+r
    # font-increase=Control+plus Control+equal Control+KP_Add
    # font-decrease=Control+minus Control+KP_Subtract
    # font-reset=Control+0 Control+KP_0
    # spawn-terminal=Control+Shift+n
    # minimize=none
    # maximize=none
    # fullscreen=none
    # pipe-visible=[sh -c "xurls | fuzzel | xargs -r firefox"] none
    # pipe-scrollback=[sh -c "xurls | fuzzel | xargs -r firefox"] none
    # pipe-selected=[xargs -r firefox] none
    # show-urls-launch=Control+Shift+u
    # show-urls-copy=none
    # show-urls-persistent=none
    # prompt-prev=Control+Shift+z
    # prompt-next=Control+Shift+x
    # unicode-input=none
    # noop=none

    [search-bindings]
    # cancel=Control+g Control+c Escape
    # commit=Return
    # find-prev=Control+r
    # find-next=Control+s
    # cursor-left=Left Control+b
    # cursor-left-word=Control+Left Mod1+b
    # cursor-right=Right Control+f
    # cursor-right-word=Control+Right Mod1+f
    # cursor-home=Home Control+a
    # cursor-end=End Control+e
    # delete-prev=BackSpace
    # delete-prev-word=Mod1+BackSpace Control+BackSpace
    # delete-next=Delete
    # delete-next-word=Mod1+d Control+Delete
    # extend-to-word-boundary=Control+w
    # extend-to-next-whitespace=Control+Shift+w
    # clipboard-paste=Control+v Control+Shift+v Control+y XF86Paste
    # primary-paste=Shift+Insert
    # unicode-input=none

    [url-bindings]
    # cancel=Control+g Control+c Control+d Escape
    # toggle-url-visible=t

    [text-bindings]
    # \x03=Mod4+c  # Map Super+c -> Ctrl+c

    [mouse-bindings]
    # selection-override-modifiers=Shift
    # primary-paste=BTN_MIDDLE
    # select-begin=BTN_LEFT
    # select-begin-block=Control+BTN_LEFT
    # select-extend=BTN_RIGHT
    # select-extend-character-wise=Control+BTN_RIGHT
    # select-word=BTN_LEFT-2
    # select-word-whitespace=Control+BTN_LEFT-2
    # select-row=BTN_LEFT-3

    # vim: ft=dosini

  '';
}
