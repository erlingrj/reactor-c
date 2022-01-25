cmake_minimum_required(VERSION 3.13)

set(FREERTOS_DIR ${CMAKE_CURRENT_LIST_DIR})
set(FREERTOS_POSIX_DIR ${FREERTOS_DIR}/portable)

message(${FREERTOS_DIR})

# Include FreeRTOS API
include_directories(${FREERTOS_DIR})
include_directories(${FREERTOS_DIR}/include)

# Include FreeRTOS POSIX Port so we can Simulate it on Linux
include_directories(${FREERTOS_POSIX_DIR})
include_directories(${FREERTOS_POSIX_DIR}/utils)

# Find sources
set(FREERTOS_SRCS    
    ${FREERTOS_DIR}/tasks.c
    ${FREERTOS_DIR}/timers.c
    ${FREERTOS_DIR}/list.c
    ${FREERTOS_DIR}/queue.c
    ${FREERTOS_DIR}/event_groups.c
    ${FREERTOS_DIR}/portable/MemMang/heap_3.c
)

set(FREERTOS_POSIX_SRCS
    ${FREERTOS_POSIX_DIR}/port.c
    ${FREERTOS_POSIX_DIR}/utils/wait_for_event.c
)



