#include <stdarg.h>

int getUnknown(unsigned char c, ...)
{
  unsigned char c2, c3;
  short s;
  va_list ap;

  va_start(ap, c);
  c2 = (unsigned char) va_arg(ap, int);
  c3 = (unsigned char) va_arg(ap, int);
  s  = (short) va_arg(ap, int);
  va_end(ap);

  return c + c2 + c3 + s;
}

int main()
{
  return getUnknown(1, 2, 3, 4);
}
