#include "memory.h"
#include <stdlib.h>

void *reallocate(void *pointer, size_t oldSize, size_t newSize) {
  if (0 == newSize) {
    free(pointer);
    return NULL;
  }

  void *result = realloc(pointer, newSize);
  return result;
}
