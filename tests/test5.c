#include <assert.h>
#include <math.h>
#include <sched.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/resource.h>
#include <sys/time.h>
#include <time.h>
#include <unistd.h>

#ifndef POLYBENCH_PADDING_FACTOR

#define POLYBENCH_PADDING_FACTOR 0
#endif

#define POLYBENCH_C99_SELECT(x, y) x

#define POLYBENCH_LOOP_BOUND(x, y) y

#define POLYBENCH_ARRAY(x) *x
#define POLYBENCH_FREE_ARRAY(x) free((void *)x);
#define POLYBENCH_DECL_VAR(x) (*x)

#define POLYBENCH_1D(var, dim1, ddim1)                                         \
  var[POLYBENCH_C99_SELECT(dim1, ddim1) + POLYBENCH_PADDING_FACTOR]
#define POLYBENCH_2D(var, dim1, dim2, ddim1, ddim2)                            \
  var[POLYBENCH_C99_SELECT(dim1, ddim1) + POLYBENCH_PADDING_FACTOR]            \
     [POLYBENCH_C99_SELECT(dim2, ddim2) + POLYBENCH_PADDING_FACTOR]
#define POLYBENCH_3D(var, dim1, dim2, dim3, ddim1, ddim2, ddim3)               \
  var[POLYBENCH_C99_SELECT(dim1, ddim1) + POLYBENCH_PADDING_FACTOR]            \
     [POLYBENCH_C99_SELECT(dim2, ddim2) + POLYBENCH_PADDING_FACTOR]            \
     [POLYBENCH_C99_SELECT(dim3, ddim3) + POLYBENCH_PADDING_FACTOR]
#define POLYBENCH_4D(var, dim1, dim2, dim3, dim4, ddim1, ddim2, ddim3, ddim4)  \
  var[POLYBENCH_C99_SELECT(dim1, ddim1) + POLYBENCH_PADDING_FACTOR]            \
     [POLYBENCH_C99_SELECT(dim2, ddim2) + POLYBENCH_PADDING_FACTOR]            \
     [POLYBENCH_C99_SELECT(dim3, ddim3) + POLYBENCH_PADDING_FACTOR]            \
     [POLYBENCH_C99_SELECT(dim4, ddim4) + POLYBENCH_PADDING_FACTOR]
#define POLYBENCH_5D(var, dim1, dim2, dim3, dim4, dim5, ddim1, ddim2, ddim3,   \
                     ddim4, ddim5)                                             \
  var[POLYBENCH_C99_SELECT(dim1, ddim1) + POLYBENCH_PADDING_FACTOR]            \
     [POLYBENCH_C99_SELECT(dim2, ddim2) + POLYBENCH_PADDING_FACTOR]            \
     [POLYBENCH_C99_SELECT(dim3, ddim3) + POLYBENCH_PADDING_FACTOR]            \
     [POLYBENCH_C99_SELECT(dim4, ddim4) + POLYBENCH_PADDING_FACTOR]            \
     [POLYBENCH_C99_SELECT(dim5, ddim5) + POLYBENCH_PADDING_FACTOR]

#define POLYBENCH_ALLOC_1D_ARRAY(n1, type)                                     \
  (type(*)[n1 + POLYBENCH_PADDING_FACTOR])                                     \
      polybench_alloc_data(n1 + POLYBENCH_PADDING_FACTOR, sizeof(type))
#define POLYBENCH_ALLOC_2D_ARRAY(n1, n2, type)                                 \
  (type(*)[n1 + POLYBENCH_PADDING_FACTOR][n2 + POLYBENCH_PADDING_FACTOR])      \
      polybench_alloc_data((n1 + POLYBENCH_PADDING_FACTOR) *                   \
                               (n2 + POLYBENCH_PADDING_FACTOR),                \
                           sizeof(type))
#define POLYBENCH_ALLOC_3D_ARRAY(n1, n2, n3, type)                             \
  (type(*)[n1 + POLYBENCH_PADDING_FACTOR][n2 + POLYBENCH_PADDING_FACTOR]       \
          [n3 + POLYBENCH_PADDING_FACTOR])                                     \
      polybench_alloc_data((n1 + POLYBENCH_PADDING_FACTOR) *                   \
                               (n2 + POLYBENCH_PADDING_FACTOR) *               \
                               (n3 + POLYBENCH_PADDING_FACTOR),                \
                           sizeof(type))
#define POLYBENCH_ALLOC_4D_ARRAY(n1, n2, n3, n4, type)                         \
  (type(*)[n1 + POLYBENCH_PADDING_FACTOR][n2 + POLYBENCH_PADDING_FACTOR]       \
          [n3 + POLYBENCH_PADDING_FACTOR][n4 + POLYBENCH_PADDING_FACTOR])      \
      polybench_alloc_data((n1 + POLYBENCH_PADDING_FACTOR) *                   \
                               (n2 + POLYBENCH_PADDING_FACTOR) *               \
                               (n3 + POLYBENCH_PADDING_FACTOR) *               \
                               (n4 + POLYBENCH_PADDING_FACTOR),                \
                           sizeof(type))
#define POLYBENCH_ALLOC_5D_ARRAY(n1, n2, n3, n4, n5, type)                     \
  (type(*)[n1 + POLYBENCH_PADDING_FACTOR][n2 + POLYBENCH_PADDING_FACTOR]       \
          [n3 + POLYBENCH_PADDING_FACTOR][n4 + POLYBENCH_PADDING_FACTOR]       \
          [n5 + POLYBENCH_PADDING_FACTOR])                                     \
      polybench_alloc_data((n1 + POLYBENCH_PADDING_FACTOR) *                   \
                               (n2 + POLYBENCH_PADDING_FACTOR) *               \
                               (n3 + POLYBENCH_PADDING_FACTOR) *               \
                               (n4 + POLYBENCH_PADDING_FACTOR) *               \
                               (n5 + POLYBENCH_PADDING_FACTOR),                \
                           sizeof(type))

#define POLYBENCH_1D_ARRAY_DECL(var, type, dim1, ddim1)                        \
  type POLYBENCH_1D(POLYBENCH_DECL_VAR(var), dim1, ddim1);                     \
  var = POLYBENCH_ALLOC_1D_ARRAY(POLYBENCH_C99_SELECT(dim1, ddim1), type);
#define POLYBENCH_2D_ARRAY_DECL(var, type, dim1, dim2, ddim1, ddim2)           \
  type POLYBENCH_2D(POLYBENCH_DECL_VAR(var), dim1, dim2, ddim1, ddim2);        \
  var = POLYBENCH_ALLOC_2D_ARRAY(POLYBENCH_C99_SELECT(dim1, ddim1),            \
                                 POLYBENCH_C99_SELECT(dim2, ddim2), type);
#define POLYBENCH_3D_ARRAY_DECL(var, type, dim1, dim2, dim3, ddim1, ddim2,     \
                                ddim3)                                         \
  type POLYBENCH_3D(POLYBENCH_DECL_VAR(var), dim1, dim2, dim3, ddim1, ddim2,   \
                    ddim3);                                                    \
  var = POLYBENCH_ALLOC_3D_ARRAY(POLYBENCH_C99_SELECT(dim1, ddim1),            \
                                 POLYBENCH_C99_SELECT(dim2, ddim2),            \
                                 POLYBENCH_C99_SELECT(dim3, ddim3), type);
#define POLYBENCH_4D_ARRAY_DECL(var, type, dim1, dim2, dim3, dim4, ddim1,      \
                                ddim2, ddim3, ddim4)                           \
  type POLYBENCH_4D(POLYBENCH_DECL_VAR(var), dim1, dim2, , dim3, dim4, ddim1,  \
                    ddim2, ddim3, ddim4);                                      \
  var = POLYBENCH_ALLOC_4D_ARRAY(POLYBENCH_C99_SELECT(dim1, ddim1),            \
                                 POLYBENCH_C99_SELECT(dim2, ddim2),            \
                                 POLYBENCH_C99_SELECT(dim3, ddim3),            \
                                 POLYBENCH_C99_SELECT(dim4, ddim4), type);
#define POLYBENCH_5D_ARRAY_DECL(var, type, dim1, dim2, dim3, dim4, dim5,       \
                                ddim1, ddim2, ddim3, ddim4, ddim5)             \
  type POLYBENCH_5D(POLYBENCH_DECL_VAR(var), dim1, dim2, dim3, dim4, dim5,     \
                    ddim1, ddim2, ddim3, ddim4, ddim5);                        \
  var = POLYBENCH_ALLOC_5D_ARRAY(                                              \
      POLYBENCH_C99_SELECT(dim1, ddim1), POLYBENCH_C99_SELECT(dim2, ddim2),    \
      POLYBENCH_C99_SELECT(dim3, ddim3), POLYBENCH_C99_SELECT(dim4, ddim4),    \
      POLYBENCH_C99_SELECT(dim5, ddim5), type);

#define POLYBENCH_DCE_ONLY_CODE if (argc > 42 && !strcmp(argv[0], ""))

#define polybench_prevent_dce(func)                                            \
  POLYBENCH_DCE_ONLY_CODE                                                      \
  func

#define polybench_start_instruments
#define polybench_stop_instruments
#define polybench_print_instruments

extern void *polybench_alloc_data(unsigned long long int n, int elt_size);

#ifndef POLYBENCH_THREAD_MONITOR
#define POLYBENCH_THREAD_MONITOR 0
#endif

#ifndef POLYBENCH_CACHE_SIZE_KB
#define POLYBENCH_CACHE_SIZE_KB 32770
#endif

int polybench_papi_counters_threadid = POLYBENCH_THREAD_MONITOR;
double polybench_program_total_flops = 0;

double polybench_t_start, polybench_t_end;

unsigned long long int polybench_c_start, polybench_c_end;

static double rtclock() { return 0; }

void polybench_flush_cache() {
  int cs = POLYBENCH_CACHE_SIZE_KB * 1024 / sizeof(double);
  double *flush = (double *)calloc(cs, sizeof(double));
  int i;
  double tmp = 0.0;
  for (i = 0; i < cs; i++) tmp += flush[i];
  assert(tmp <= 10.0);
  free(flush);
}

void polybench_prepare_instruments() { polybench_flush_cache(); }

void polybench_timer_start() {
  polybench_prepare_instruments();
  polybench_t_start = rtclock();
}

void polybench_timer_stop() { polybench_t_end = rtclock(); }

void polybench_timer_print() {
  printf("%0.6f\n", polybench_t_end - polybench_t_start);
}

static void *xmalloc(size_t num) {
  void *new_ = NULL;
  int ret = posix_memalign(&new_, 32, num);
  if (!new_ || ret) {
    fprintf(stderr, "[PolyBench] posix_memalign: cannot allocate memory");
    exit(1);
  }
  return new_;
}

void *polybench_alloc_data(unsigned long long int n, int elt_size) {
  size_t val = n;
  val *= elt_size;
  void *ret = xmalloc(val);
  return ret;
}

static inline void print_element(double el, int pos, char *out) {
  union {
    double datum;
    char bytes[8];
  } block;
  block.datum = el;
  *(out + pos) = (block.bytes[0] & 0xF0 >> 4) + '0';
  *(out + pos + 1) = (block.bytes[0] & 0x0F) + '0';
  *(out + pos + 2) = (block.bytes[1] & 0xF0 >> 4) + '0';
  *(out + pos + 3) = (block.bytes[1] & 0x0F) + '0';
  *(out + pos + 4) = (block.bytes[2] & 0xF0 >> 4) + '0';
  *(out + pos + 5) = (block.bytes[2] & 0x0F) + '0';
  *(out + pos + 6) = (block.bytes[3] & 0xF0 >> 4) + '0';
  *(out + pos + 7) = (block.bytes[3] & 0x0F) + '0';
  *(out + pos + 8) = (block.bytes[4] & 0xF0 >> 4) + '0';
  *(out + pos + 9) = (block.bytes[4] & 0x0F) + '0';
  *(out + pos + 10) = (block.bytes[5] & 0xF0 >> 4) + '0';
  *(out + pos + 11) = (block.bytes[5] & 0x0F) + '0';
  *(out + pos + 12) = (block.bytes[6] & 0xF0 >> 4) + '0';
  *(out + pos + 13) = (block.bytes[6] & 0x0F) + '0';
  *(out + pos + 14) = (block.bytes[7] & 0xF0 >> 4) + '0';
  *(out + pos + 15) = (block.bytes[7] & 0x0F) + '0';
}

#define STANDARD_DATASET

#define TSTEPS 10000
#define LENGTH 50

#define _PB_TSTEPS POLYBENCH_LOOP_BOUND(TSTEPS, tsteps)
#define _PB_LENGTH POLYBENCH_LOOP_BOUND(LENGTH, length)

#define DATA_TYPE int
#define DATA_PRINTF_MODIFIER "%d "

static void
init_array(int length,
           DATA_TYPE POLYBENCH_2D(c, LENGTH, LENGTH, length, length),
           DATA_TYPE POLYBENCH_2D(W, LENGTH, LENGTH, length, length)) {
#pragma STDC FP_CONTRACT OFF
  int i, j;
  for (i = 0; i < length; i++)
    for (j = 0; j < length; j++) {
      c[i][j] = i * j % 2;
      W[i][j] = ((DATA_TYPE)i - j) / length;
    }
}

static void print_array(DATA_TYPE out) {
  fprintf(stderr, DATA_PRINTF_MODIFIER, out);
  fprintf(stderr, "\n");
}

static void
kernel_dynprog(int tsteps, int length,
               DATA_TYPE POLYBENCH_2D(c, LENGTH, LENGTH, length, length),
               DATA_TYPE POLYBENCH_2D(W, LENGTH, LENGTH, length, length),
               DATA_TYPE POLYBENCH_3D(sum_c, LENGTH, LENGTH, LENGTH, length,
                                      length, length),
               DATA_TYPE *out) {
  int iter, i, j, k;

  DATA_TYPE out_l = 0;

#pragma scop
  for (iter = 0; iter < _PB_TSTEPS; iter++) {
    for (i = 0; i <= _PB_LENGTH - 1; i++)
      for (j = 0; j <= _PB_LENGTH - 1; j++) c[i][j] = 0;

    for (i = 0; i <= _PB_LENGTH - 2; i++) {
      for (j = i + 1; j <= _PB_LENGTH - 1; j++) {
        sum_c[i][j][i] = 0;
        for (k = i + 1; k <= j - 1; k++)
          sum_c[i][j][k] = sum_c[i][j][k - 1] + c[i][k] + c[k][j];
        c[i][j] = sum_c[i][j][j - 1] + W[i][j];
      }
    }
    out_l += c[0][_PB_LENGTH - 1];
  }
#pragma endscop

  *out = out_l;
}

static void kernel_dynprog_StrictFP(
    int tsteps, int length,
    DATA_TYPE POLYBENCH_2D(c, LENGTH, LENGTH, length, length),
    DATA_TYPE POLYBENCH_2D(W, LENGTH, LENGTH, length, length),
    DATA_TYPE POLYBENCH_3D(sum_c, LENGTH, LENGTH, LENGTH, length, length,
                           length),
    DATA_TYPE *out) {
#pragma STDC FP_CONTRACT OFF
  int iter, i, j, k;

  DATA_TYPE out_l = 0;

  for (iter = 0; iter < _PB_TSTEPS; iter++) {
    for (i = 0; i <= _PB_LENGTH - 1; i++)
      for (j = 0; j <= _PB_LENGTH - 1; j++) c[i][j] = 0;

    for (i = 0; i <= _PB_LENGTH - 2; i++) {
      for (j = i + 1; j <= _PB_LENGTH - 1; j++) {
        sum_c[i][j][i] = 0;
        for (k = i + 1; k <= j - 1; k++)
          sum_c[i][j][k] = sum_c[i][j][k - 1] + c[i][k] + c[k][j];
        c[i][j] = sum_c[i][j][j - 1] + W[i][j];
      }
    }
    out_l += c[0][_PB_LENGTH - 1];
  }

  *out = out_l;
}

#define FP_ABSTOLERANCE 1e-5

static int check_FP(DATA_TYPE A, DATA_TYPE B) {
  double AbsTolerance = FP_ABSTOLERANCE;
  double V1 = A;
  double V2 = B;
  double Diff = fabs(V1 - V2);
  if (Diff > AbsTolerance) {
    fprintf(stderr,
            "A = %lf and B = %lf differ more than"
            " FP_ABSTOLERANCE = %lf\n",
            V1, V2, AbsTolerance);
    return 0;
  }
  return 1;
}

int main(int argc, char **argv) {
  int length = LENGTH;
  int tsteps = TSTEPS;
  DATA_TYPE out;
  DATA_TYPE out_StrictFP;
  POLYBENCH_3D_ARRAY_DECL(sum_c, DATA_TYPE, LENGTH, LENGTH, LENGTH, length,
                          length, length);
  POLYBENCH_2D_ARRAY_DECL(c, DATA_TYPE, LENGTH, LENGTH, length, length);
  POLYBENCH_2D_ARRAY_DECL(W, DATA_TYPE, LENGTH, LENGTH, length, length);
  init_array(length, POLYBENCH_ARRAY(c), POLYBENCH_ARRAY(W));
  polybench_start_instruments;
  kernel_dynprog(tsteps, length, POLYBENCH_ARRAY(c), POLYBENCH_ARRAY(W),
                 POLYBENCH_ARRAY(sum_c), &out);
  polybench_stop_instruments;
  polybench_print_instruments;
  init_array(length, POLYBENCH_ARRAY(c), POLYBENCH_ARRAY(W));
  kernel_dynprog(tsteps, length, POLYBENCH_ARRAY(c), POLYBENCH_ARRAY(W),
                 POLYBENCH_ARRAY(sum_c), &out_StrictFP);
  if (!check_FP(out, out_StrictFP)) return 1;
  polybench_prevent_dce(print_array(out_StrictFP));
  POLYBENCH_FREE_ARRAY(sum_c);
  POLYBENCH_FREE_ARRAY(c);
  POLYBENCH_FREE_ARRAY(W);

  return 0;
}
