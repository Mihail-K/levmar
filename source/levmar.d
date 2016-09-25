
module levmar;

public import dlevmar;
public import slevmar;

enum LM_OPTS_SZ     = 5; // max(4, 5)
enum LM_INFO_SZ     = 10;
enum LM_ERROR       = -1;
enum LM_INIT_MU     = 1E-03;
enum LM_STOP_THRESH = 1E-17;
enum LM_DIFF_DELTA  = 1E-06;
enum LM_VERSION     = "2.6 (November 2011)";

void levmar_PLASMA_setnbcores(int cores);
