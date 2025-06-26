package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzauj;
import com.google.android.gms.internal.ads.zzbar;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class g91 {
    public final zo2 a;
    public final zzbar b;
    public final ApplicationInfo c;
    public final String d;
    public final List<String> e;
    public final PackageInfo f;
    public final xa3<aw2<String>> g;
    public final String h;
    public final pd2<Bundle> i;

    public g91(zo2 zo2Var, zzbar zzbarVar, ApplicationInfo applicationInfo, String str, List list, PackageInfo packageInfo, xa3 xa3Var, String str2, pd2 pd2Var) {
        this.a = zo2Var;
        this.b = zzbarVar;
        this.c = applicationInfo;
        this.d = str;
        this.e = list;
        this.f = packageInfo;
        this.g = xa3Var;
        this.h = str2;
        this.i = pd2Var;
    }

    public final aw2<Bundle> a() {
        return this.a.c(ap2.SIGNALS).b(this.i.a(new Bundle())).e();
    }

    public final aw2<zzauj> b() {
        final aw2<Bundle> aw2VarA = a();
        return this.a.a(ap2.REQUEST_PARCEL, aw2VarA, this.g.get()).a(new Callable(this, aw2VarA) { // from class: j91
            public final g91 e;
            public final aw2 f;

            {
                this.e = this;
                this.f = aw2VarA;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                g91 g91Var = this.e;
                aw2 aw2Var = this.f;
                Objects.requireNonNull(g91Var);
                return new zzauj((Bundle) aw2Var.get(), g91Var.b, g91Var.c, g91Var.d, g91Var.e, g91Var.f, g91Var.g.get().get(), g91Var.h, null, null);
            }
        }).e();
    }
}
