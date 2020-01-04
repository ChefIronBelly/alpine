const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#263238", /* black   */
  [1] = "#F07178", /* red     */
  [2] = "#C3E88D", /* green   */
  [3] = "#FFCB6B", /* yellow  */
  [4] = "#82AAFF", /* blue    */
  [5] = "#C792EA", /* magenta */
  [6] = "#89DDFF", /* cyan    */
  [7] = "#EEFFFF", /* white   */

  /* 8 bright colors */
  [8]  = "#546E7A",  /* black   */
  [9]  = "#F07178",  /* red     */
  [10] = "#C3E88D", /* green   */
  [11] = "#FFCB6B", /* yellow  */
  [12] = "#82AAFF", /* blue    */
  [13] = "#C792EA", /* magenta */
  [14] = "#89DDFF", /* cyan    */
  [15] = "#FFFFFF", /* white   */

  /* special colors */
  [256] = "#263238", /* background */
  [257] = "#EEFFFF", /* foreground */
  [258] = "#EEFFFF",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
