package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzajm;
import com.google.android.gms.internal.ads.zzajw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class xt1 implements rv2<String> {
    public final /* synthetic */ mt1 a;

    public xt1(mt1 mt1Var) {
        this.a = mt1Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        synchronized (this) {
            mt1 mt1Var = this.a;
            mt1Var.c = true;
            mt1Var.n.put("com.google.android.gms.ads.MobileAds", new zzajm("com.google.android.gms.ads.MobileAds", false, (int) (zzr.zzlc().b() - this.a.d), "Internal Error."));
            this.a.e.b(new Exception());
        }
    }

    @Override // defpackage.rv2
    public final void onSuccess(String str) {
        final String str2 = str;
        synchronized (this) {
            mt1 mt1Var = this.a;
            mt1Var.c = true;
            mt1Var.n.put("com.google.android.gms.ads.MobileAds", new zzajm("com.google.android.gms.ads.MobileAds", true, (int) (zzr.zzlc().b() - this.a.d), ""));
            this.a.i.execute(new Runnable(this, str2) { // from class: wt1
                public final xt1 e;
                public final String f;

                {
                    this.e = this;
                    this.f = str2;
                }

                @Override // java.lang.Runnable
                public final void run() throws JSONException {
                    JSONObject jSONObject;
                    xt1 xt1Var = this.e;
                    String str3 = this.f;
                    mt1 mt1Var2 = xt1Var.a;
                    Objects.requireNonNull(mt1Var2);
                    try {
                        ArrayList arrayList = new ArrayList();
                        JSONObject jSONObject2 = new JSONObject(str3).getJSONObject("initializer_settings").getJSONObject("config");
                        Iterator<String> itKeys = jSONObject2.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            Object obj = new Object();
                            xs0 xs0Var = new xs0();
                            aw2 aw2VarD = vt2.d(xs0Var, ((Long) os3.j.f.a(y40.j1)).longValue(), TimeUnit.SECONDS, mt1Var2.k);
                            mt1Var2.l.c(next);
                            mt1Var2.o.D0(new xe1(next));
                            long jB = zzr.zzlc().b();
                            aw2VarD.i(new Runnable(mt1Var2, obj, xs0Var, next, jB) { // from class: tt1
                                public final mt1 e;
                                public final Object f;
                                public final xs0 g;
                                public final String h;
                                public final long i;

                                {
                                    this.e = mt1Var2;
                                    this.f = obj;
                                    this.g = xs0Var;
                                    this.h = next;
                                    this.i = jB;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    mt1 mt1Var3 = this.e;
                                    Object obj2 = this.f;
                                    xs0 xs0Var2 = this.g;
                                    String str4 = this.h;
                                    long j = this.i;
                                    Objects.requireNonNull(mt1Var3);
                                    synchronized (obj2) {
                                        if (!xs0Var2.isDone()) {
                                            mt1Var3.n.put(str4, new zzajm(str4, false, (int) (zzr.zzlc().b() - j), "Timeout."));
                                            mt1Var3.l.e(str4, "timeout");
                                            mt1Var3.o.D0(new ze1(str4, "timeout"));
                                            xs0Var2.a(Boolean.FALSE);
                                        }
                                    }
                                }
                            }, mt1Var2.i);
                            arrayList.add(aw2VarD);
                            zt1 zt1Var = new zt1(mt1Var2, obj, next, jB, xs0Var);
                            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject(next);
                            ArrayList arrayList2 = new ArrayList();
                            if (jSONObjectOptJSONObject != null) {
                                try {
                                    JSONArray jSONArray = jSONObjectOptJSONObject.getJSONArray("data");
                                    int i = 0;
                                    while (i < jSONArray.length()) {
                                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                                        String strOptString = jSONObject3.optString("format", "");
                                        JSONObject jSONObjectOptJSONObject2 = jSONObject3.optJSONObject("data");
                                        Bundle bundle = new Bundle();
                                        if (jSONObjectOptJSONObject2 != null) {
                                            Iterator<String> itKeys2 = jSONObjectOptJSONObject2.keys();
                                            while (itKeys2.hasNext()) {
                                                String next2 = itKeys2.next();
                                                jSONObject = jSONObject2;
                                                try {
                                                    bundle.putString(next2, jSONObjectOptJSONObject2.optString(next2, ""));
                                                    jSONObject2 = jSONObject;
                                                } catch (JSONException unused) {
                                                }
                                            }
                                        }
                                        JSONObject jSONObject4 = jSONObject2;
                                        arrayList2.add(new zzajw(strOptString, bundle));
                                        i++;
                                        jSONObject2 = jSONObject4;
                                    }
                                } catch (JSONException unused2) {
                                }
                                jSONObject = jSONObject2;
                            } else {
                                jSONObject = jSONObject2;
                            }
                            mt1Var2.b(next, false, "", 0);
                            try {
                                try {
                                    mt1Var2.j.execute(new Runnable(mt1Var2, mt1Var2.h.b(next, new JSONObject()), zt1Var, arrayList2, next) { // from class: vt1
                                        public final mt1 e;
                                        public final zl2 f;
                                        public final pc0 g;
                                        public final List h;
                                        public final String i;

                                        {
                                            this.e = mt1Var2;
                                            this.f = zl2Var;
                                            this.g = zt1Var;
                                            this.h = arrayList2;
                                            this.i = next;
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() throws pl2 {
                                            mt1 mt1Var3 = this.e;
                                            zl2 zl2Var = this.f;
                                            pc0 pc0Var = this.g;
                                            List<zzajw> list = this.h;
                                            String str4 = this.i;
                                            Objects.requireNonNull(mt1Var3);
                                            try {
                                                Context context = mt1Var3.g.get();
                                                if (context == null) {
                                                    context = mt1Var3.f;
                                                }
                                                Objects.requireNonNull(zl2Var);
                                                try {
                                                    try {
                                                        zl2Var.a.r1(new y20(context), pc0Var, list);
                                                    } catch (RemoteException e) {
                                                        is0.zzc("", e);
                                                    }
                                                } catch (Throwable th) {
                                                    throw new pl2(th);
                                                }
                                            } catch (pl2 unused3) {
                                                StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + 74);
                                                sb.append("Failed to initialize adapter. ");
                                                sb.append(str4);
                                                sb.append(" does not implement the initialize() method.");
                                                pc0Var.onInitializationFailed(sb.toString());
                                            }
                                        }
                                    });
                                } catch (pl2 unused3) {
                                    zt1Var.onInitializationFailed("Failed to create Adapter.");
                                }
                            } catch (RemoteException e) {
                                is0.zzc("", e);
                            }
                            jSONObject2 = jSONObject;
                        }
                        new gv2(nt2.y(arrayList), false, mt1Var2.i, new Callable(mt1Var2) { // from class: st1
                            public final mt1 e;

                            {
                                this.e = mt1Var2;
                            }

                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                this.e.e.a(Boolean.TRUE);
                                return null;
                            }
                        });
                    } catch (JSONException e2) {
                        zzd.zza("Malformed CLD response", e2);
                    }
                }
            });
        }
    }
}
