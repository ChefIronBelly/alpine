static const char norm_fg[] = "#82AAFF";
static const char norm_bg[] = "#263238";
static const char norm_border[] = "#263238";

static const char sel_fg[] = "#FFFFFF";
static const char sel_bg[] = "#82AAFF";
static const char sel_border[] = "#82AAFF";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
