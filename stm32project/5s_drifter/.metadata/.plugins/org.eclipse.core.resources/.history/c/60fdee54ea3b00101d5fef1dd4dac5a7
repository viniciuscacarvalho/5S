/*
 * package.h
 *
 *  Created on: May 1, 2025
 *      Author: viny
 */

#ifndef PROJECT_TASK_BEHAVIOR_PACKAGE_H_
#define PROJECT_TASK_BEHAVIOR_PACKAGE_H_

#include "defines.h"

typedef struct p_data_s
{
    unsigned short power_level;
    unsigned short temperature[NUMBER_OF_SAMPLES];
    unsigned short imu[NUMBER_OF_SAMPLES];
    unsigned short gnss[2][NUMBER_OF_SAMPLES];
    unsigned short errors;
} package_data_t;


package_data_t* write_package_data();

package_data_t* read_package_data();

void update_package_data();


#endif /* PROJECT_TASK_BEHAVIOR_PACKAGE_H_ */
