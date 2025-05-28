// Self-contained version of ControlFlow-flt/tsc.c with all includes expanded
#define TYPE float
#define ALIGNMENT 16

// --- Begin tests.h ---
#define LINEAR_DEPENDENCE (1 << 0)
#define INDUCTION_VARIABLE (1 << 1)
#define GLOBAL_DATA_FLOW (1 << 2)
#define CONTROL_FLOW (1 << 3)
#define SYMBOLICS (1 << 4)
#define STATEMENT_REORDERING (1 << 5)
#define LOOP_RESTRUCTURING (1 << 6)
#define NODE_SPLITTING (1 << 7)
#define EXPANSION (1 << 8)
#define CROSSING_THRESHOLDS (1 << 9)
#define REDUCTIONS (1 << 10)
#define RECURRENCES (1 << 11)
#define SEARCHING (1 << 12)
#define PACKING (1 << 13)
#define LOOP_REROLLING (1 << 14)
#define EQUIVALENCING (1 << 15)
#define INDIRECT_ADDRESSING (1 << 16)
#define CONTROL_LOOPS (1 << 17)
// --- End tests.h ---

#define TESTS CONTROL_FLOW

// --- Begin types.h ---
#define LEN 32000
#define LEN2 256
#ifndef TYPE
#define TYPE float
#define FABS(x) fabsf(x)
#else
#define FABS(x) fabs(x)
#endif
#ifndef X_TYPE
#define X_TYPE TYPE
#endif
#ifndef ALIGNMENT
#define ALIGNMENT 16
#endif
// --- End types.h ---

// --- Begin tsc.inc (reduced to only CONTROL_FLOW code and dependencies) ---
#define ntimes_default 200000
#define digits_default 6
#define _XOPEN_SOURCE 600
#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/param.h>
#include <sys/times.h>
#include <sys/types.h>
#include <time.h>

static int ntimes = ntimes_default;
static int digits = digits_default;

#define lll LEN
#ifndef USE_CLOCK
#define clock() 0
#endif

__attribute__((aligned(ALIGNMENT))) X_TYPE X[lll], Y[lll], Z[lll], U[lll],
    V[lll];
TYPE array[LEN2 * LEN2] __attribute__((aligned(ALIGNMENT)));
TYPE x[LEN] __attribute__((aligned(ALIGNMENT)));
TYPE temp;
int temp_int;
struct GlobalData {
  __attribute__((aligned(ALIGNMENT))) TYPE a[LEN];
  int pad1[3];
  __attribute__((aligned(ALIGNMENT))) TYPE b[LEN];
  int pad2[5];
  __attribute__((aligned(ALIGNMENT))) TYPE c[LEN];
  int pad3[7];
  __attribute__((aligned(ALIGNMENT))) TYPE d[LEN];
  int pad4[11];
  __attribute__((aligned(ALIGNMENT))) TYPE e[LEN];
  int pad5[13];
  __attribute__((aligned(ALIGNMENT))) TYPE aa[LEN2][LEN2];
  int pad6[17];
  __attribute__((aligned(ALIGNMENT))) TYPE bb[LEN2][LEN2];
  int pad7[19];
  __attribute__((aligned(ALIGNMENT))) TYPE cc[LEN2][LEN2];
  int pad8[23];
  __attribute__((aligned(ALIGNMENT))) TYPE tt[LEN2][LEN2];
} global_data;
__attribute__((aligned(ALIGNMENT))) TYPE *const a = global_data.a;
__attribute__((aligned(ALIGNMENT))) TYPE *const b = global_data.b;
__attribute__((aligned(ALIGNMENT))) TYPE *const c = global_data.c;
__attribute__((aligned(ALIGNMENT))) TYPE *const d = global_data.d;
__attribute__((aligned(ALIGNMENT))) TYPE *const e = global_data.e;
__attribute__((aligned(ALIGNMENT))) TYPE (*const aa)[LEN2] = global_data.aa;
__attribute__((aligned(ALIGNMENT))) TYPE (*const bb)[LEN2] = global_data.bb;
__attribute__((aligned(ALIGNMENT))) TYPE (*const cc)[LEN2] = global_data.cc;
__attribute__((aligned(ALIGNMENT))) TYPE (*const tt)[LEN2] = global_data.tt;
int indx[LEN] __attribute__((aligned(ALIGNMENT)));
TYPE *__restrict__ xx;
TYPE *yy;
int dummy(TYPE x1[LEN], TYPE x2[LEN], TYPE x3[LEN], TYPE x4[LEN], TYPE x5[LEN],
          TYPE x6[LEN2][LEN2], TYPE x7[LEN2][LEN2], TYPE x8[LEN2][LEN2],
          TYPE x9) {
  return 0;
}
int set1d(TYPE arr[LEN], TYPE value, int stride) {
  for (int i = 0; i < LEN; i++)
    arr[i] = value;
  return 0;
}
int set2d(TYPE arr[LEN2][LEN2], TYPE value, int stride) {
  for (int i = 0; i < LEN2; i++)
    for (int j = 0; j < LEN2; j++)
      arr[i][j] = value;
  return 0;
}
void check(int name){

	TYPE suma = 0;
	TYPE sumb = 0;
	TYPE sumc = 0;
	TYPE sumd = 0;
	TYPE sume = 0;
	for (int i = 0; i < LEN; i++){
		suma += a[i];
		sumb += b[i];
		sumc += c[i];
		sumd += d[i];
		sume += e[i];
	}
	TYPE sumaa = 0;
	TYPE sumbb = 0;
	TYPE sumcc = 0;
	for (int i = 0; i < LEN2; i++){
		for (int j = 0; j < LEN2; j++){
			sumaa += aa[i][j];
			sumbb += bb[i][j];
			sumcc += cc[i][j];

		}
	}
	TYPE sumarray = 0;
	for (int i = 0; i < LEN2*LEN2; i++){
		sumarray += array[i];
	}

	if (name == 1) printf("%.*G \n",digits,suma);
	if (name == 2) printf("%.*G \n",digits,sumb);
	if (name == 3) printf("%.*G \n",digits,sumc);
	if (name == 4) printf("%.*G \n",digits,sumd);
	if (name == 5) printf("%.*G \n",digits,sume);
	if (name == 11) printf("%.*G \n",digits,sumaa);
	if (name == 22) printf("%.*G \n",digits,sumbb);
	if (name == 33) printf("%.*G \n",digits,sumcc);
	if (name == 0) printf("%.*G \n",digits,sumarray);
	if (name == 12) printf("%.*G \n",digits,suma+sumb);
	if (name == 25) printf("%.*G \n",digits,sumb+sume);
	if (name == 13) printf("%.*G \n",digits,suma+sumc);
	if (name == 123) printf("%.*G \n",digits,suma+sumb+sumc);
	if (name == 1122) printf("%.*G \n",digits,sumaa+sumbb);
	if (name == 112233) printf("%.*G \n",digits,sumaa+sumbb+sumcc);
	if (name == 111) printf("%.*G \n",digits,sumaa+suma);
	if (name == -1) printf("%.*G \n",digits,temp);
	if (name == -12) printf("%.*G \n",digits,temp+sumb);

}
int init(char *name) {
  set1d(a, 1.0, 1);
  set1d(b, 1.0, 1);
  set1d(c, 1.0, 1);
  set1d(d, 1.0, 1);
  set1d(e, 1.0, 1);
  set2d(aa, 0.0, 1);
  set2d(bb, 0.0, 1);
  set2d(cc, 0.0, 1);
  return 0;
}

// --- Only CONTROL_FLOW test functions ---
int s161() {
  clock_t start_t, end_t, clock_dif;
  double clock_dif_sec;
  init("s161 ");
  start_t = clock();
  for (int nl = 0; nl < ntimes / 2; nl++) {
    for (int i = 0; i < LEN - 1; ++i) {
      if (b[i] < (TYPE)0.) {
        c[i + 1] = a[i] + d[i] * d[i];
      } else {
        a[i] = c[i] + d[i] * e[i];
      }
    }
    dummy(a, b, c, d, e, aa, bb, cc, 0.);
  }
  end_t = clock();
  clock_dif = end_t - start_t;
  clock_dif_sec = (double)(clock_dif / 1000000.0);
  printf("S161\t %.2f \t\t", clock_dif_sec);
  check(13);
  return 0;
}
int s1161() {
  clock_t start_t, end_t, clock_dif;
  double clock_dif_sec;
  init("s161 ");
  start_t = clock();
  for (int nl = 0; nl < ntimes; nl++) {
    for (int i = 0; i < LEN - 1; ++i) {
      if (c[i] < (TYPE)0.) {
        b[i] = a[i] + d[i] * d[i];
      } else {
        a[i] = c[i] + d[i] * e[i];
      }
    }
    dummy(a, b, c, d, e, aa, bb, cc, 0.);
  }
  end_t = clock();
  clock_dif = end_t - start_t;
  clock_dif_sec = (double)(clock_dif / 1000000.0);
  printf("S1161\t %.2f \t\t", clock_dif_sec);
  check(13);
  return 0;
}
int s162(int k) {
  clock_t start_t, end_t, clock_dif;
  double clock_dif_sec;
  init("s162 ");
  start_t = clock();
  for (int nl = 0; nl < ntimes; nl++) {
    if (k > 0) {
      for (int i = 0; i < LEN - 1; i++) {
        a[i] = a[i + k] + b[i] * c[i];
      }
    }
    dummy(a, b, c, d, e, aa, bb, cc, 0.);
  }
  end_t = clock();
  clock_dif = end_t - start_t;
  clock_dif_sec = (double)(clock_dif / 1000000.0);
  printf("S162\t %.2f \t\t", clock_dif_sec);
  check(1);
  return 0;
}
int s271() {
  clock_t start_t, end_t, clock_dif;
  double clock_dif_sec;
  init("s271 ");
  start_t = clock();
  for (int nl = 0; nl < 4 * ntimes; nl++) {
    for (int i = 0; i < LEN; i++) {
      if (b[i] > (TYPE)0.) {
        a[i] += b[i] * c[i];
      }
    }
    dummy(a, b, c, d, e, aa, bb, cc, 0.);
  }
  end_t = clock();
  clock_dif = end_t - start_t;
  clock_dif_sec = (double)(clock_dif / 1000000.0);
  printf("S271\t %.2f \t\t", clock_dif_sec);
  check(1);
  return 0;
}
// ... (other CONTROL_FLOW test functions can be added similarly) ...

int main(int argc, char *argv[]) {
  int n1 = 1;
  int n3 = 1;
  int *ip;
  TYPE s1, s2;
  posix_memalign((void **)&ip, ALIGNMENT, LEN * sizeof(TYPE));
  if (argc > 1)
    ntimes = atoi(argv[1]);
  printf("Running each loop %d times...\n", ntimes);
  if (argc > 2)
    digits = atoi(argv[2]);
  printf("Loop \t Time(Sec) \t Checksum \n");
  s161();
  s1161();
  s162(n1);
  s271();
  // ... (call other CONTROL_FLOW test functions as needed) ...
  return 0;
}
// --- End tsc.inc ---
