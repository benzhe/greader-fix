package defpackage;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class vf5<T> {

    /* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<android.content.Context>] */
    public static class b {
        public final Class<? extends Service> a;

        public b(Class cls, a aVar) {
            this.a = cls;
        }

        public List a(Object obj) throws PackageManager.NameNotFoundException {
            Context context = (Context) obj;
            Bundle bundle = null;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                } else {
                    ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.a), 128);
                    if (serviceInfo == null) {
                        Log.w("ComponentDiscovery", this.a + " has no service info.");
                    } else {
                        bundle = serviceInfo.metaData;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("ComponentDiscovery", "Application info not found.");
            }
            if (bundle == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : bundle.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundle.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }
    }

    public static xf5 a(String str) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName(str);
            if (xf5.class.isAssignableFrom(cls)) {
                return (xf5) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new ng5(String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
        } catch (ClassNotFoundException unused) {
            Log.w("ComponentDiscovery", String.format("Class %s is not an found.", str));
            return null;
        } catch (IllegalAccessException e) {
            throw new ng5(String.format("Could not instantiate %s.", str), e);
        } catch (InstantiationException e2) {
            throw new ng5(String.format("Could not instantiate %s.", str), e2);
        } catch (NoSuchMethodException e3) {
            throw new ng5(String.format("Could not instantiate %s", str), e3);
        } catch (InvocationTargetException e4) {
            throw new ng5(String.format("Could not instantiate %s", str), e4);
        }
    }
}
