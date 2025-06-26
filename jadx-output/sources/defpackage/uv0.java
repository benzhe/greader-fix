package defpackage;

import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class uv0 extends zza {
    public final iu0 b;
    public final zv0 c;
    public final String d;
    public final String[] e;

    public uv0(iu0 iu0Var, zv0 zv0Var, String str, String[] strArr) {
        this.b = iu0Var;
        this.c = zv0Var;
        this.d = str;
        this.e = strArr;
        zzr.zzlr().e.add(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        try {
            this.c.q(this.d, this.e);
        } finally {
            zzj.zzegq.post(new xv0(this));
        }
    }
}
