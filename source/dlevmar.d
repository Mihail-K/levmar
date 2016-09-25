
module levmar;

extern(C)
{
    alias DLevmarCallback = void function(
        double* p,
        double* hx,
        int m,
        int n,
        void* adata
    );

    alias DLevmarJacobian = void function(
        double* p,
        double* j,
        int m,
        int n,
        void* adata
    )

    /+ - unconstrained minimization - +/

    int dlevmar_der(
        DLevmarCallback func,
        DLevmarJacobian jacf,
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

    /+ - box-constrained minimization - +/

    int dlevmar_bc_der(
        DLevmarCallback func,
        DLevmarJacobian jacf,
        double* p,
        double* x,
        int m,
        int n,
        double* lb,
        double* ub,
        double* dscl,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    int dlevmar_bc_dif(
        DLevmarCallback func,
        double* p,
        double* x,
        int m,
        int n,
        double* lb,
        double* ub,
        double* dscl,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    /+ - linear equation constrained minimization - +/

    int dlevmar_lec_der(
        DLevmarCallback func,
        DLevmarJacobian jacf,
        double* p,
        double* x,
        int m,
        int n,
        double* A,
        double* b,
        int k,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    int dlevmar_lec_dif(
        DLevmarCallback func,
        double* p,
        double* x,
        int m,
        int n,
        double* A,
        double* b,
        int k,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    /+ - box & linear equation constrained minimization - +/

    int dlevmar_blec_der(
        DLevmarCallback func,
        DLevmarJacobian jacf,
        double* p,
        double* x,
        int m,
        int n,
        double* lb,
        double* ub,
        double* A,
        double* b,
        int k,
        double* wghts,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    int dlevmar_blec_dif(
        DLevmarCallback func,
        double* p,
        double* x,
        int m,
        int n,
        double* lb,
        double* ub,
        double* A,
        double* b,
        int k,
        double* wghts,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    /+ - box, linear equations & inequalities constrained minimization - +/

    int dlevmar_bleic_der(
        DLevmarCallback func,
        DLevmarJacobian jacf,
        double* p,
        double* x,
        int m,
        int n,
        double* lb,
        double* ub,
        double* A,
        double* b,
        int k1,
        double* C,
        double* d,
        int k2,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    int dlevmar_bleic_dif(
        DLevmarCallback func,
        double* p,
        double* x,
        int m,
        int n,
        double* lb,
        double* ub,
        double* A,
        double* b,
        int k1,
        double* C,
        double* d,
        int k2,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    /+ - box & linear inequality constraints - +/

    int dlevmar_blic_der(
        DLevmarCallback func,
        DLevmarJacobian jacf,
        double* p,
        double* x,
        int m,
        int n,
        double* lb,
        double* ub,
        double* C,
        double* d,
        int k2,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    int dlevmar_blic_dif(
        DLevmarCallback func,
        double* p,
        double* x,
        int m,
        int n,
        double* lb,
        double* ub,
        double* C,
        double* d,
        int k2,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    /+ - linear equation & inequality constraints - +/

    int dlevmar_leic_der(
        DLevmarCallback func,
        DLevmarJacobian jacf,
        double* p,
        double* x,
        int m,
        int n,
        double* A,
        double* b,
        int k1,
        double* C,
        double* d,
        int k2,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    int dlevmar_leic_dif(
        DLevmarCallback func,
        double* p,
        double* x,
        int m,
        int n,
        double* A,
        double* b,
        int k1,
        double* C,
        double* d,
        int k2,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    /+ - linear inequality constraints - +/

    int dlevmar_lic_der(
        DLevmarCallback func,
        DLevmarJacobian jacf,
        double* p,
        double* x,
        int m,
        int n,
        double* C,
        double* d,
        int k2,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    int dlevmar_lic_dif(
        DLevmarCallback func,
        double* p,
        double* x,
        int m,
        int n,
        double* C,
        double* d,
        int k2,
        int itmax,
        double* opts,
        double* info,
        double* work,
        double* covar,
        void* adata
    );

    /+ - linear system solvers - +/

    int dAx_eq_b_QR(double* A, double* B, double* x, int m);

    int dAx_eq_b_QRLS(double* A, double* B, double* x, int m, int n);

    int dAx_eq_b_Chol(double* A, double* B, double* x, int m);

    int dAx_eq_b_LU(double* A, double* B, double* x, int m);

    int dAx_eq_b_SVD(double* A, double* B, double* x, int m);

    int dAx_eq_b_BK(double* A, double* B, double* x, int m);

    int dAx_eq_b_LU_noLapack(double* A, double* B, double* x, int n);

    int dAx_eq_b_PLASMA_Chol(double* A, double* B, double* x, int m);

    /+ - Jacobian verification - +/

    void dlevmar_chkjac(
        DLevmarCallback func,
        DLevmarJacobian jacf,
        double* p,
        int m,
        int n,
        void* adata,
        double* err
    );

    /+ miscellaneous: standard deviation, coefficient of determination (R2),
     +                Pearson's correlation coefficient for best-fit parameters
     +/

    double dlevmar_stddev(double* covar, int m, int i);
    double dlevmar_corcoef(double* covar, int m, int i, int j);

    double dlevmar_R2(
        DLevmarCallback func,
        double* p,
        double* x,
        int m,
        int n,
        void* adata
    );
}
