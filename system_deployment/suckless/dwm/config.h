/* See LICENSE file for copyright and license details. */

#include <X11/XF86keysym.h>

/* appearance */
static const unsigned int borderpx  = 0;        /* border pixel of windows */
static const unsigned int snap      = 0;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */

static const char *fonts[]          = { "Hack:size=10" };
static const char dmenufont[]       = "Hack:size=10";

static const char color_topbar[]                            = "#000000"; // topbar and background
static const char color_border_unactive_window[]            = "#000000"; // unactive window border and foreground (disabled title bar)
static const char color_font_statusbar_unactive_tag[]       = "#999999"; // unactive tag font and status bar
static const char color_border_active_window_tag[]          = "#000000"; // active window border and active tag
static const char color_font_active_tag[]                   = "#FFFFFF"; // active tag font

static const char *colors[][3]      = {
	/*               fg                                    bg                                border   */
	[SchemeNorm] = { color_font_statusbar_unactive_tag,    color_topbar,                     color_border_unactive_window },
	[SchemeSel]  = { color_font_active_tag,                color_border_active_window_tag,   color_border_active_window_tag  },
};

/* tagging */
static const char *tags[] = { "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "",  NULL,       NULL,       0,            0,           -1 },
	{ "",  NULL,       NULL,       0,            0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.50; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ " ",      tile },    /* first entry is default */
	{ "[F]",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", color_topbar, "-nf", color_font_statusbar_unactive_tag, "-sb", color_border_active_window_tag, "-sf", color_font_active_tag, NULL };
static const char *termcmd[]  = { "st", NULL };

static const char *firefox[] = { "/usr/bin/firefox", NULL };

static const char *keylayout[]             = { "/home/user/Scripts/keylayout", NULL  };
static const char *printscreen[]           = { "/home/user/Scripts/printscreen", NULL };
static const char *printscreen_selection[] = { "/home/user/Scripts/printscreen_selection", NULL };

static const char *vol_up[]   = { "/usr/bin/pactl", "set-sink-volume", "0", "+10%",   NULL };
static const char *vol_down[] = { "/usr/bin/pactl", "set-sink-volume", "0", "-10%",   NULL };
static const char *vol_mute[] = { "/usr/bin/pactl", "set-sink-mute",   "0", "toggle", NULL };

static const char *bright_up[]   = { "doas", "xbacklight", "-inc", "10", NULL };
static const char *bright_down[] = { "doas", "xbacklight", "-dec", "10", NULL };

static Key keys[] = {
	/* modifier                     key        function        argument */

// Personal Commands

	{ MODKEY,                       XK_a,      spawn,          {.v = firefox } },

	{ MODKEY,                       XK_F1,      spawn,          {.v = printscreen_selection } },
	{ MODKEY,                       XK_F2,      spawn,          {.v = printscreen } },
	{ MODKEY,                       XK_F3,      spawn,          {.v = bright_down } },
	{ MODKEY,                       XK_F4,      spawn,          {.v = bright_up } },
	{ MODKEY,                       XK_F5,      spawn,          {.v = vol_mute } },
	{ MODKEY,                       XK_F6,      spawn,          {.v = vol_down } },
	{ MODKEY,                       XK_F7,      spawn,          {.v = vol_up } },

	{ MODKEY,                       XK_F12,      spawn,          {.v = keylayout } },

// Default Commands

	{ MODKEY,                       XK_p,      spawn,          {.v = dmenucmd } },
	{ MODKEY|ShiftMask,             XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY|ShiftMask,             XK_c,      killclient,     {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
	{ MODKEY,                       XK_Return, zoom,           {0} },


/* Annoying default commands

	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
*/
};

/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },

/* Annoying default mouse commands

	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
*/
};

