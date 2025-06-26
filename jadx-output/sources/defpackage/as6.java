package defpackage;

import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class as6 {
    public static Class b = null;
    public static Method c = null;
    public static Method d = null;
    public static Method e = null;
    public static boolean f = false;
    public Object a;

    public class b {
        public Method a;
        public Method b;
        public Method c;
        public Method d;
        public Object e;

        public b(as6 as6Var, Object obj, a aVar) throws NoSuchMethodException, SecurityException {
            boolean z = as6.f;
            if (z && obj == null) {
                throw new IllegalArgumentException("Remote Control API's exist, should not be given a null MetadataEditor");
            }
            if (z) {
                Class<?> cls = obj.getClass();
                try {
                    Class<?> cls2 = Integer.TYPE;
                    this.a = cls.getMethod("putString", cls2, String.class);
                    this.b = cls.getMethod("putBitmap", cls2, Bitmap.class);
                    this.c = cls.getMethod("putLong", cls2, Long.TYPE);
                    cls.getMethod("clear", new Class[0]);
                    this.d = cls.getMethod("apply", new Class[0]);
                } catch (Exception e) {
                    throw new RuntimeException(e.getMessage(), e);
                }
            }
            this.e = obj;
        }

        public b a(int i, String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (as6.f) {
                try {
                    this.a.invoke(this.e, Integer.valueOf(i), str);
                } catch (Exception e) {
                    throw new RuntimeException(e.getMessage(), e);
                }
            }
            return this;
        }
    }

    static {
        try {
            b = as6.class.getClassLoader().loadClass("android.media.RemoteControlClient");
            for (Field field : as6.class.getFields()) {
                try {
                    field.set(null, b.getField(field.getName()).get(null));
                } catch (IllegalAccessException e2) {
                    Log.w("RemoteControlCompat", "Error trying to pull field value for: " + field.getName() + StringUtils.SPACE + e2.getMessage());
                } catch (IllegalArgumentException e3) {
                    Log.w("RemoteControlCompat", "Error trying to pull field value for: " + field.getName() + StringUtils.SPACE + e3.getMessage());
                } catch (NoSuchFieldException unused) {
                    Log.w("RemoteControlCompat", "Could not get real field: " + field.getName());
                }
            }
            c = b.getMethod("editMetadata", Boolean.TYPE);
            Class cls = b;
            Class<?> cls2 = Integer.TYPE;
            d = cls.getMethod("setPlaybackState", cls2);
            e = b.getMethod("setTransportControlFlags", cls2);
            f = true;
        } catch (ClassNotFoundException | IllegalArgumentException | NoSuchMethodException | SecurityException unused2) {
        }
    }

    public as6(PendingIntent pendingIntent) {
        if (f) {
            try {
                this.a = b.getConstructor(PendingIntent.class).newInstance(pendingIntent);
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public void a(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (f) {
            try {
                d.invoke(this.a, Integer.valueOf(i));
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }
}
