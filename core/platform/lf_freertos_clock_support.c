/**
 * Initialize the LF clock.
 */
void lf_initialize_clock() {
}

/**
 * Fetch the value of _LF_CLOCK (see lf_linux_support.h) and store it in tp. The
 * timestamp value in 't' will always be epoch time, which is the number of
 * nanoseconds since January 1st, 1970.
 *
 * @return 0 for success, or -1 for failure. In case of failure, errno will be
 *  set appropriately (see `man 2 clock_gettime`).
 */

int lf_clock_gettime(instant_t* t) {
    static int time = 0;
    (*t) = time++;
    return 0;
}