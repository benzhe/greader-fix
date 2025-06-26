package defpackage;

import android.preference.Preference;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* loaded from: classes2.dex */
public class ex6 {
    public static final String a = "ex6";

    public static class a implements InvocationHandler {
        public final /* synthetic */ b a;

        public a(b bVar) {
            this.a = bVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getName().equals("onPreferenceTreeClick")) {
                return Boolean.valueOf(this.a.a((PreferenceScreen) objArr[0], (Preference) objArr[1]));
            }
            return null;
        }
    }

    public interface b {
        boolean a(PreferenceScreen preferenceScreen, Preference preference);
    }

    public static void a(PreferenceManager preferenceManager, b bVar) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            Field declaredField = PreferenceManager.class.getDeclaredField("mOnPreferenceTreeClickListener");
            declaredField.setAccessible(true);
            if (bVar != null) {
                declaredField.set(preferenceManager, Proxy.newProxyInstance(declaredField.getType().getClassLoader(), new Class[]{declaredField.getType()}, new a(bVar)));
            } else {
                declaredField.set(preferenceManager, null);
            }
        } catch (Exception e) {
            Log.w(a, "Couldn't set PreferenceManager.mOnPreferenceTreeClickListener by reflection", e);
        }
    }
}
