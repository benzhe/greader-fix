package defpackage;

import android.content.ComponentName;
import android.media.AudioManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class vr6 {
    public static Method a;

    static {
        try {
            a = AudioManager.class.getMethod("registerMediaButtonEventReceiver", ComponentName.class);
            AudioManager.class.getMethod("unregisterMediaButtonEventReceiver", ComponentName.class);
        } catch (NoSuchMethodException unused) {
        }
    }

    public static void a(AudioManager audioManager, ComponentName componentName) {
        Method method = a;
        if (method == null) {
            return;
        }
        try {
            method.invoke(audioManager, componentName);
        } catch (IllegalAccessException e) {
            n56.y1("MediaButtonHelper", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (!(cause instanceof Error)) {
                throw new RuntimeException(e2);
            }
            throw ((Error) cause);
        }
    }
}
