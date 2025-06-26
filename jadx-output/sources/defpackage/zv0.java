package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class zv0 implements sy {
    public Context e;
    public String f;
    public WeakReference<iu0> g;

    public zv0(iu0 iu0Var) {
        this.e = iu0Var.getContext();
        this.f = zzr.zzkv().zzq(this.e, iu0Var.b().e);
        this.g = new WeakReference<>(iu0Var);
    }

    public static void j(zv0 zv0Var, String str, Map map) {
        iu0 iu0Var = zv0Var.g.get();
        if (iu0Var != null) {
            iu0Var.x(str, map);
        }
    }

    public abstract void a();

    public final void k(String str, String str2, int i) {
        zr0.b.post(new dw0(this, str, str2, i));
    }

    public final void l(String str, String str2, String str3, String str4) {
        zr0.b.post(new fw0(this, str, str2, str3, str4));
    }

    public void m(int i) {
    }

    public void n(int i) {
    }

    public void o(int i) {
    }

    public void p(int i) {
    }

    public boolean q(String str, String[] strArr) {
        return r(str);
    }

    public abstract boolean r(String str);

    @Override // defpackage.sy
    public void release() {
    }

    public String s(String str) {
        return zr0.l(str);
    }
}
