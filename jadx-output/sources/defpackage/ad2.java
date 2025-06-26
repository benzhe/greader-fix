package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbar;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class ad2 implements qd2<bd2> {
    public final zv2 a;
    public final Context b;
    public final zzbar c;

    public ad2(zv2 zv2Var, Context context, zzbar zzbarVar) {
        this.a = zv2Var;
        this.b = context;
        this.c = zzbarVar;
    }

    @Override // defpackage.qd2
    public final aw2<bd2> a() {
        return this.a.y(new Callable(this) { // from class: dd2
            public final ad2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                ad2 ad2Var = this.e;
                boolean zC = i20.a(ad2Var.b).c();
                zzr.zzkv();
                boolean zZzax = zzj.zzax(ad2Var.b);
                String str = ad2Var.c.e;
                zzr.zzkx();
                boolean zZzzx = com.google.android.gms.ads.internal.util.zzr.zzzx();
                zzr.zzkv();
                return new bd2(zC, zZzax, str, zZzzx, zzj.zzau(ad2Var.b), DynamiteModule.b(ad2Var.b, ModuleDescriptor.MODULE_ID), DynamiteModule.a(ad2Var.b, ModuleDescriptor.MODULE_ID));
            }
        });
    }
}
