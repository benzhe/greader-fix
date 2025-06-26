package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.zzr;
import java.util.Objects;

/* loaded from: classes.dex */
public final class cn3 implements Runnable {
    public final /* synthetic */ View e;
    public final /* synthetic */ zm3 f;

    public cn3(zm3 zm3Var, View view) {
        this.f = zm3Var;
        this.e = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        zm3 zm3Var = this.f;
        View view = this.e;
        Objects.requireNonNull(zm3Var);
        try {
            tm3 tm3Var = new tm3(zm3Var.j, zm3Var.k, zm3Var.l, zm3Var.m, zm3Var.n, zm3Var.o, zm3Var.p, zm3Var.s);
            Context contextB = zzr.zzky().b();
            if (contextB != null && !TextUtils.isEmpty(zm3Var.q)) {
                String str = (String) view.getTag(contextB.getResources().getIdentifier((String) os3.j.f.a(y40.O), "id", contextB.getPackageName()));
                if (str != null && str.equals(zm3Var.q)) {
                    return;
                }
            }
            dn3 dn3VarA = zm3Var.a(view, tm3Var);
            tm3Var.d();
            if (dn3VarA.a == 0 && dn3VarA.b == 0) {
                return;
            }
            int i = dn3VarA.b;
            if (i == 0 && tm3Var.k == 0) {
                return;
            }
            if (i == 0) {
                wm3 wm3Var = zm3Var.h;
                synchronized (wm3Var.a) {
                    z = wm3Var.c.contains(tm3Var);
                }
                if (z) {
                    return;
                }
            }
            zm3Var.h.b(tm3Var);
        } catch (Exception e) {
            is0.zzc("Exception in fetchContentOnUIThread", e);
            or0 or0VarZzkz = zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "ContentFetchTask.fetchContent");
        }
    }
}
