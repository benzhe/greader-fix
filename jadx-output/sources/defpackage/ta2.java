package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class ta2 implements qd2<ua2> {
    public final Context a;
    public final zv2 b;

    public ta2(Context context, zv2 zv2Var) {
        this.a = context;
        this.b = zv2Var;
    }

    @Override // defpackage.qd2
    public final aw2<ua2> a() {
        return this.b.y(new Callable(this) { // from class: sa2
            public final ta2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                ta2 ta2Var = this.e;
                Objects.requireNonNull(ta2Var);
                zzr.zzkv();
                String strZzay = zzj.zzay(ta2Var.a);
                String string = ((Boolean) os3.j.f.a(y40.H3)).booleanValue() ? ta2Var.a.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "") : "";
                zzr.zzkv();
                return new ua2(strZzay, string, zzj.zzaz(ta2Var.a), null);
            }
        });
    }
}
