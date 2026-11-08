%module mujoco

%{
    #include <mujoco/mujoco.h>
%}
    
#define MJAPI
#define mjPRINTFLIKE(n, m)

%pragma(java) jniclasscode=%{
    static {
        System.loadLibrary("mujoco_jni");
    }
%}

%include <stdint.i>
%include <various.i>
%include <carrays.i>

%apply char *BYTE { char *error };

%include <mujoco/mjtype.h>
%include <mujoco/mjmodel.h>
%include <mujoco/mjdata.h>


%array_functions(mjtNum, mjNumArray);
%array_functions(int, mjIntArray);
%array_functions(mjtSize, mjSizeArray);

%include <mujoco/mujoco.h>
