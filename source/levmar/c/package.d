
module levmar.c;

extern(C)
{
    alias DLevmarCallback = void function(
        double* p,
        double* hx,
        int m,
        int n,
        void* adata
    );

    int dlevmar_dif(
        DLevmarCallback func,
        double* p,
        double* x,
        int m,
        int n,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );
}
