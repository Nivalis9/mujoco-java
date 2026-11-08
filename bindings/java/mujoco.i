%module mujoco

%{
    #include <mujoco/mujoco.h>
    %}
    
#define MJAPI
#define mjPRINTFLIKE(n, m)

%include <mujoco/mujoco.h>
