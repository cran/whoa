// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// estimate_m_rd
List estimate_m_rd(IntegerMatrix Y, IntegerMatrix R, double init_m, int num_cats, NumericVector p_prior, NumericVector m_prior, int num_reps);
RcppExport SEXP _whoa_estimate_m_rd(SEXP YSEXP, SEXP RSEXP, SEXP init_mSEXP, SEXP num_catsSEXP, SEXP p_priorSEXP, SEXP m_priorSEXP, SEXP num_repsSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< IntegerMatrix >::type Y(YSEXP);
    Rcpp::traits::input_parameter< IntegerMatrix >::type R(RSEXP);
    Rcpp::traits::input_parameter< double >::type init_m(init_mSEXP);
    Rcpp::traits::input_parameter< int >::type num_cats(num_catsSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type p_prior(p_priorSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type m_prior(m_priorSEXP);
    Rcpp::traits::input_parameter< int >::type num_reps(num_repsSEXP);
    rcpp_result_gen = Rcpp::wrap(estimate_m_rd(Y, R, init_m, num_cats, p_prior, m_prior, num_reps));
    return rcpp_result_gen;
END_RCPP
}
// gibbsM
void gibbsM(NumericVector M, int num_cats, IntegerMatrix X, IntegerMatrix Y, IntegerMatrix R, NumericVector pri);
RcppExport SEXP _whoa_gibbsM(SEXP MSEXP, SEXP num_catsSEXP, SEXP XSEXP, SEXP YSEXP, SEXP RSEXP, SEXP priSEXP) {
BEGIN_RCPP
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type M(MSEXP);
    Rcpp::traits::input_parameter< int >::type num_cats(num_catsSEXP);
    Rcpp::traits::input_parameter< IntegerMatrix >::type X(XSEXP);
    Rcpp::traits::input_parameter< IntegerMatrix >::type Y(YSEXP);
    Rcpp::traits::input_parameter< IntegerMatrix >::type R(RSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type pri(priSEXP);
    gibbsM(M, num_cats, X, Y, R, pri);
    return R_NilValue;
END_RCPP
}
// gibbsP
void gibbsP(NumericVector p, IntegerMatrix X, NumericVector pri);
RcppExport SEXP _whoa_gibbsP(SEXP pSEXP, SEXP XSEXP, SEXP priSEXP) {
BEGIN_RCPP
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type p(pSEXP);
    Rcpp::traits::input_parameter< IntegerMatrix >::type X(XSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type pri(priSEXP);
    gibbsP(p, X, pri);
    return R_NilValue;
END_RCPP
}
// gibbsX
void gibbsX(IntegerMatrix X, IntegerMatrix Y, IntegerMatrix R, NumericVector p, NumericVector M);
RcppExport SEXP _whoa_gibbsX(SEXP XSEXP, SEXP YSEXP, SEXP RSEXP, SEXP pSEXP, SEXP MSEXP) {
BEGIN_RCPP
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< IntegerMatrix >::type X(XSEXP);
    Rcpp::traits::input_parameter< IntegerMatrix >::type Y(YSEXP);
    Rcpp::traits::input_parameter< IntegerMatrix >::type R(RSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type p(pSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type M(MSEXP);
    gibbsX(X, Y, R, p, M);
    return R_NilValue;
END_RCPP
}
// make_it_012
IntegerMatrix make_it_012(CharacterMatrix M);
RcppExport SEXP _whoa_make_it_012(SEXP MSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< CharacterMatrix >::type M(MSEXP);
    rcpp_result_gen = Rcpp::wrap(make_it_012(M));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_whoa_estimate_m_rd", (DL_FUNC) &_whoa_estimate_m_rd, 7},
    {"_whoa_gibbsM", (DL_FUNC) &_whoa_gibbsM, 6},
    {"_whoa_gibbsP", (DL_FUNC) &_whoa_gibbsP, 3},
    {"_whoa_gibbsX", (DL_FUNC) &_whoa_gibbsX, 5},
    {"_whoa_make_it_012", (DL_FUNC) &_whoa_make_it_012, 1},
    {NULL, NULL, 0}
};

RcppExport void R_init_whoa(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
