package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.FirebaseCommonRegistrar;
import defpackage.ay5;
import defpackage.bb6;
import defpackage.by5;
import defpackage.cb6;
import defpackage.ig5;
import defpackage.n56;
import defpackage.nj7;
import defpackage.sf5;
import defpackage.wf5;
import defpackage.xf5;
import defpackage.za6;
import defpackage.zx5;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class FirebaseCommonRegistrar implements xf5 {
    public static String a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // defpackage.xf5
    public List<sf5<?>> getComponents() {
        String string;
        ArrayList arrayList = new ArrayList();
        sf5.b bVarA = sf5.a(cb6.class);
        bVarA.a(new ig5(za6.class, 2, 0));
        bVarA.d(new wf5() { // from class: wa6
            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                Set setD = tf5Var.d(za6.class);
                ya6 ya6Var = ya6.b;
                if (ya6Var == null) {
                    synchronized (ya6.class) {
                        ya6Var = ya6.b;
                        if (ya6Var == null) {
                            ya6Var = new ya6();
                            ya6.b = ya6Var;
                        }
                    }
                }
                return new xa6(setD, ya6Var);
            }
        });
        arrayList.add(bVarA.b());
        int i = zx5.b;
        sf5.b bVarA2 = sf5.a(by5.class);
        bVarA2.a(new ig5(Context.class, 1, 0));
        bVarA2.a(new ig5(ay5.class, 2, 0));
        bVarA2.d(new wf5() { // from class: xx5
            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                return new zx5((Context) tf5Var.a(Context.class), tf5Var.d(ay5.class));
            }
        });
        arrayList.add(bVarA2.b());
        arrayList.add(n56.F("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(n56.F("fire-core", "19.5.0"));
        arrayList.add(n56.F("device-name", a(Build.PRODUCT)));
        arrayList.add(n56.F("device-model", a(Build.DEVICE)));
        arrayList.add(n56.F("device-brand", a(Build.BRAND)));
        arrayList.add(n56.z0("android-target-sdk", new bb6() { // from class: qe5
            @Override // defpackage.bb6
            public String a(Object obj) {
                ApplicationInfo applicationInfo = ((Context) obj).getApplicationInfo();
                return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
            }
        }));
        arrayList.add(n56.z0("android-min-sdk", new bb6() { // from class: re5
            @Override // defpackage.bb6
            public String a(Object obj) {
                ApplicationInfo applicationInfo = ((Context) obj).getApplicationInfo();
                return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
            }
        }));
        arrayList.add(n56.z0("android-platform", new bb6() { // from class: se5
            @Override // defpackage.bb6
            public String a(Object obj) {
                Context context = (Context) obj;
                int i2 = Build.VERSION.SDK_INT;
                return context.getPackageManager().hasSystemFeature("android.hardware.type.television") ? "tv" : context.getPackageManager().hasSystemFeature("android.hardware.type.watch") ? "watch" : (i2 < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) ? (i2 < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded" : "auto";
            }
        }));
        arrayList.add(n56.z0("android-installer", new bb6() { // from class: te5
            @Override // defpackage.bb6
            public String a(Object obj) {
                Context context = (Context) obj;
                String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                return installerPackageName != null ? FirebaseCommonRegistrar.a(installerPackageName) : "";
            }
        }));
        try {
            string = nj7.i.toString();
        } catch (NoClassDefFoundError unused) {
            string = null;
        }
        if (string != null) {
            arrayList.add(n56.F("kotlin", string));
        }
        return arrayList;
    }
}
