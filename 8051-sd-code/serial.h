
#ifndef __SERIAL_H__
#define __SERIAL_H__

/**
 * @brief Initialize the serial port.
 *
 */
void init_serial();

/**
 * @brief putchar takes a char and TX's it. This is a blocking call.
 *
 * @param c The character to be sent.
 */
int putchar(int c);

/**
 * @brief getchar gets a char from RX. Blocking
 *
 * @return char
 */
int getchar(void);

/**
 * @brief putstr takes a string (char array) and prints till it finds a NULL.
 * Returns length of printed string with null char.
 * @param s string to be printed
 * @return int The length of the printed string
 */
int putstr(char *s);

/**
 * @brief getstr gets a string from RX. Blocking. The
 * receiving stops when the delimeter is found. In
 * case the input string stream is larger than the
 * provided buffer, the input string will be truncated
 * and the returned actual received string length
 * can be used to check the validity of the string
 * buffer.
 *
 * @param s char array to be filled
 * @param deli the delimeter used to stop receiving
 * @param size the size of the array
 * @return int the actual received string length
 */
int getstr(char *s, char deli, int size);

#endif /* __SERIAL_H__ */



