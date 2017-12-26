#ifndef UTIL_H
#define UTIL_H

#define IS_BIT_SET(REG, BIT)         (((REG) & (BIT)) != RESET)
#define IS_BIT_CLR(REG, BIT)         (((REG) & (BIT)) == RESET)

#endif

