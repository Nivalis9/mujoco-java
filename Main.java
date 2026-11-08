public class Main {
    public static void main(String[] args) {
        System.loadLibrary("mujoco_jni");
        System.out.println(mujoco.mj_versionString());
    }
}
