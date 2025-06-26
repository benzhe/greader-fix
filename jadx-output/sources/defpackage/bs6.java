package defpackage;

import android.media.AudioManager;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class bs6 {
    public static boolean a = false;
    public static Method b;

    static {
        try {
            ClassLoader classLoader = bs6.class.getClassLoader();
            Class cls = as6.b;
            Class<?> clsLoadClass = classLoader.loadClass("android.media.RemoteControlClient");
            b = AudioManager.class.getMethod("registerRemoteControlClient", clsLoadClass);
            AudioManager.class.getMethod("unregisterRemoteControlClient", clsLoadClass);
            a = true;
        } catch (ClassNotFoundException | IllegalArgumentException | NoSuchMethodException | SecurityException unused) {
        }
    }
}
