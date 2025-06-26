package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.util.zzi;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbar;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class or0 {
    public final Object a = new Object();
    public final zzi b;
    public final xr0 c;
    public boolean d;
    public Context e;
    public zzbar f;
    public e50 g;
    public Boolean h;
    public final AtomicInteger i;
    public final sr0 j;
    public final Object k;
    public aw2<ArrayList<String>> l;

    public or0() {
        zzi zziVar = new zzi();
        this.b = zziVar;
        this.c = new xr0(os3.j.c, zziVar);
        this.d = false;
        this.g = null;
        this.h = null;
        this.i = new AtomicInteger(0);
        this.j = new sr0(null);
        this.k = new Object();
    }

    public final Resources a() {
        if (this.f.h) {
            return this.e.getResources();
        }
        try {
            try {
                DynamiteModule.d(this.e, DynamiteModule.i, ModuleDescriptor.MODULE_ID).a.getResources();
                return null;
            } catch (Exception e) {
                throw new js0(e);
            }
        } catch (js0 e2) {
            is0.zzd("Cannot load resource from dynamite apk or local jar", e2);
            return null;
        }
    }

    public final void b(Throwable th, String str) {
        xl0.d(this.e, this.f).a(th, str);
    }

    public final void c(Throwable th, String str) {
        xl0.d(this.e, this.f).b(th, str, w60.g.a().floatValue());
    }

    public final void d(Context context, zzbar zzbarVar) {
        e50 e50Var;
        synchronized (this.a) {
            if (!this.d) {
                this.e = context.getApplicationContext();
                this.f = zzbarVar;
                zzr.zzky().d(this.c);
                this.b.initialize(this.e);
                xl0.d(this.e, this.f);
                zzr.zzle();
                if (k60.c.a().booleanValue()) {
                    e50Var = new e50();
                } else {
                    zzd.zzed("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    e50Var = null;
                }
                this.g = e50Var;
                if (e50Var != null) {
                    c50.e2(new qr0(this).zzyx(), "AppState.registerCsiReporter");
                }
                this.d = true;
                g();
            }
        }
        zzr.zzkv().zzq(context, zzbarVar.e);
    }

    public final e50 e() {
        e50 e50Var;
        synchronized (this.a) {
            e50Var = this.g;
        }
        return e50Var;
    }

    public final zzf f() {
        zzi zziVar;
        synchronized (this.a) {
            zziVar = this.b;
        }
        return zziVar;
    }

    public final aw2<ArrayList<String>> g() {
        if (this.e != null) {
            if (!((Boolean) os3.j.f.a(y40.C1)).booleanValue()) {
                synchronized (this.k) {
                    aw2<ArrayList<String>> aw2Var = this.l;
                    if (aw2Var != null) {
                        return aw2Var;
                    }
                    aw2<ArrayList<String>> aw2VarY = ms0.a.y(new Callable(this) { // from class: rr0
                        public final or0 e;

                        {
                            this.e = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            Context contextA = en0.a(this.e.e);
                            ArrayList arrayList = new ArrayList();
                            try {
                                PackageInfo packageInfoB = i20.a(contextA).b(contextA.getApplicationInfo().packageName, RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
                                if (packageInfoB.requestedPermissions != null && packageInfoB.requestedPermissionsFlags != null) {
                                    int i = 0;
                                    while (true) {
                                        String[] strArr = packageInfoB.requestedPermissions;
                                        if (i >= strArr.length) {
                                            break;
                                        }
                                        if ((packageInfoB.requestedPermissionsFlags[i] & 2) != 0) {
                                            arrayList.add(strArr[i]);
                                        }
                                        i++;
                                    }
                                }
                            } catch (PackageManager.NameNotFoundException unused) {
                            }
                            return arrayList;
                        }
                    });
                    this.l = aw2VarY;
                    return aw2VarY;
                }
            }
        }
        return vt2.j(new ArrayList());
    }
}
