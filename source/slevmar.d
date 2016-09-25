
module levmar;

extern(C)
{
    alias SLevmarCallback = void function(
        float* p,
        float* hx,
        int m,
        int n,
        void* adata
    );

    alias SLevmarJacobian = void function(
        float* p,
        float* j,
        int m,
        int n,
        void* adata
    )

    /+ - unconstrained minimization - +/

    int slevmar_der(
        SLevmarCallback func,
        SLevmarJacobian jacf,
        float* p,
        float* x,
        int m,
        int n,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    int slevmar_dif(
        SLevmarCallback func,
        float* p,
        float* x,
        int m,
        int n,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    /+ - box-constrained minimization - +/

    int slevmar_bc_der(
        SLevmarCallback func,
        SLevmarJacobian jacf,
        float* p,
        float* x,
        int m,
        int n,
        float* lb,
        float* ub,
        float* dscl,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    int slevmar_bc_dif(
        SLevmarCallback func,
        float* p,
        float* x,
        int m,
        int n,
        float* lb,
        float* ub,
        float* dscl,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    /+ - linear equation constrained minimization - +/

    int slevmar_lec_der(
        SLevmarCallback func,
        SLevmarJacobian jacf,
        float* p,
        float* x,
        int m,
        int n,
        float* A,
        float* b,
        int k,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    int slevmar_lec_dif(
        SLevmarCallback func,
        float* p,
        float* x,
        int m,
        int n,
        float* A,
        float* b,
        int k,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    /+ - box & linear equation constrained minimization - +/

    int slevmar_blec_der(
        SLevmarCallback func,
        SLevmarJacobian jacf,
        float* p,
        float* x,
        int m,
        int n,
        float* lb,
        float* ub,
        float* A,
        float* b,
        int k,
        float* wghts,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    int slevmar_blec_dif(
        SLevmarCallback func,
        float* p,
        float* x,
        int m,
        int n,
        float* lb,
        float* ub,
        float* A,
        float* b,
        int k,
        float* wghts,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    /+ - box, linear equations & inequalities constrained minimization - +/

    int slevmar_bleic_der(
        SLevmarCallback func,
        SLevmarJacobian jacf,
        float* p,
        float* x,
        int m,
        int n,
        float* lb,
        float* ub,
        float* A,
        float* b,
        int k1,
        float* C,
        float* d,
        int k2,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    int slevmar_bleic_dif(
        SLevmarCallback func,
        float* p,
        float* x,
        int m,
        int n,
        float* lb,
        float* ub,
        float* A,
        float* b,
        int k1,
        float* C,
        float* d,
        int k2,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    /+ - box & linear inequality constraints - +/

    int slevmar_blic_der(
        SLevmarCallback func,
        SLevmarJacobian jacf,
        float* p,
        float* x,
        int m,
        int n,
        float* lb,
        float* ub,
        float* C,
        float* d,
        int k2,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    int slevmar_blic_dif(
        SLevmarCallback func,
        float* p,
        float* x,
        int m,
        int n,
        float* lb,
        float* ub,
        float* C,
        float* d,
        int k2,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    /+ - linear equation & inequality constraints - +/

    int slevmar_leic_der(
        SLevmarCallback func,
        SLevmarJacobian jacf,
        float* p,
        float* x,
        int m,
        int n,
        float* A,
        float* b,
        int k1,
        float* C,
        float* d,
        int k2,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    int slevmar_leic_dif(
        SLevmarCallback func,
        float* p,
        float* x,
        int m,
        int n,
        float* A,
        float* b,
        int k1,
        float* C,
        float* d,
        int k2,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    /+ - linear inequality constraints - +/

    int slevmar_lic_der(
        SLevmarCallback func,
        SLevmarJacobian jacf,
        float* p,
        float* x,
        int m,
        int n,
        float* C,
        float* d,
        int k2,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    int slevmar_lic_dif(
        SLevmarCallback func,
        float* p,
        float* x,
        int m,
        int n,
        float* C,
        float* d,
        int k2,
        int itmax,
        float* opts,
        float* info,
        float* work,
        float* covar,
        void* adata
    );

    /+ - linear system solvers - +/

    int sAx_eq_b_QR(float* A, float* B, float* x, int m);

    int sAx_eq_b_QRLS(float* A, float* B, float* x, int m, int n);

    int sAx_eq_b_Chol(float* A, float* B, float* x, int m);

    int sAx_eq_b_LU(float* A, float* B, float* x, int m);

    int sAx_eq_b_SVD(float* A, float* B, float* x, int m);

    int sAx_eq_b_BK(float* A, float* B, float* x, int m);

    int sAx_eq_b_LU_noLapack(float* A, float* B, float* x, int n);

    int sAx_eq_b_PLASMA_Chol(float* A, float* B, float* x, int m);

    /+ - Jacobian verification - +/

    void slevmar_chkjac(
        SLevmarCallback func,
        SLevmarJacobian jacf,
        float* p,
        int m,
        int n,
        void* adata,
        float* err
    );

    /+ miscellaneous: standard deviation, coefficient of determination (R2),
     +                Pearson's correlation coefficient for best-fit parameters
     +/

    float slevmar_stddev(float* covar, int m, int i);
    float slevmar_corcoef(float* covar, int m, int i, int j);

    float slevmar_R2(
        SLevmarCallback func,
        float* p,
        float* x,
        int m,
        int n,
        void* adata
    );

    void slevmar_locscale(
        SLevmarCallback func,
        float* p,
        float* x,
        int m,
        int n,
        void* adata,
        int howto,
        float* locscl,
        float** residptr
    );

    int slevmar_outlid(
        float* r,
        int n,
        float thresh,
        float* ls,
        char* outlmap
    );
}
