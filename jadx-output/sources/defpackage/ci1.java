package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import defpackage.cq0;
import defpackage.lp3;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class ci1 implements ca1, hf1 {
    public final zp0 e;
    public final Context f;
    public final cq0 g;
    public final View h;
    public String i;
    public final lp3.a j;

    public ci1(zp0 zp0Var, Context context, cq0 cq0Var, View view, lp3.a aVar) {
        this.e = zp0Var;
        this.f = context;
        this.g = cq0Var;
        this.h = view;
        this.j = aVar;
    }

    @Override // defpackage.ca1
    public final void O(gn0 gn0Var, String str, String str2) {
        if (this.g.h(this.f)) {
            try {
                cq0 cq0Var = this.g;
                Context context = this.f;
                cq0Var.e(context, cq0Var.l(context), this.e.g, gn0Var.getType(), gn0Var.getAmount());
            } catch (RemoteException e) {
                is0.zzd("Remote Exception to get reward item.", e);
            }
        }
    }

    @Override // defpackage.hf1
    public final void a() {
        cq0 cq0Var = this.g;
        Context context = this.f;
        String str = "";
        if (cq0Var.h(context)) {
            if (cq0.i(context)) {
                str = (String) cq0Var.b("getCurrentScreenNameOrScreenClass", "", jq0.a);
            } else if (cq0Var.g(context, "com.google.android.gms.measurement.AppMeasurement", cq0Var.g, true)) {
                try {
                    String str2 = (String) cq0Var.p(context, "getCurrentScreenName").invoke(cq0Var.g.get(), new Object[0]);
                    if (str2 == null) {
                        str2 = (String) cq0Var.p(context, "getCurrentScreenClass").invoke(cq0Var.g.get(), new Object[0]);
                    }
                    if (str2 != null) {
                        str = str2;
                    }
                } catch (Exception unused) {
                    cq0Var.o("getCurrentScreenName", false);
                }
            }
        }
        this.i = str;
        String strValueOf = String.valueOf(str);
        String str3 = this.j == lp3.a.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial";
        this.i = str3.length() != 0 ? strValueOf.concat(str3) : new String(strValueOf);
    }

    @Override // defpackage.hf1
    public final void b() {
    }

    @Override // defpackage.ca1
    public final void onAdClosed() {
        this.e.d(false);
    }

    @Override // defpackage.ca1
    public final void onAdLeftApplication() {
    }

    @Override // defpackage.ca1
    public final void onAdOpened() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        View view = this.h;
        if (view != null && this.i != null) {
            cq0 cq0Var = this.g;
            final Context context = view.getContext();
            final String str = this.i;
            if (cq0Var.h(context) && (context instanceof Activity)) {
                if (cq0.i(context)) {
                    cq0Var.f("setScreenName", new cq0.a(context, str) { // from class: mq0
                        public final Context a;
                        public final String b;

                        {
                            this.a = context;
                            this.b = str;
                        }

                        @Override // cq0.a
                        public final void a(ny0 ny0Var) throws RemoteException {
                            Context context2 = this.a;
                            ny0Var.t4(new y20(context2), this.b, context2.getPackageName());
                        }
                    });
                } else if (cq0Var.g(context, "com.google.firebase.analytics.FirebaseAnalytics", cq0Var.h, false)) {
                    Method declaredMethod = cq0Var.i.get("setCurrentScreen");
                    if (declaredMethod == null) {
                        try {
                            declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("setCurrentScreen", Activity.class, String.class, String.class);
                            cq0Var.i.put("setCurrentScreen", declaredMethod);
                        } catch (Exception unused) {
                            cq0Var.o("setCurrentScreen", false);
                            declaredMethod = null;
                        }
                    }
                    try {
                        declaredMethod.invoke(cq0Var.h.get(), (Activity) context, str, context.getPackageName());
                    } catch (Exception unused2) {
                        cq0Var.o("setCurrentScreen", false);
                    }
                }
            }
        }
        this.e.d(true);
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoCompleted() {
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoStarted() {
    }
}
