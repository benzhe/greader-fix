package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;

/* loaded from: classes.dex */
public final class he0 implements kb0<we0> {
    public final /* synthetic */ se0 a;
    public final /* synthetic */ pd0 b;
    public final /* synthetic */ yd0 c;

    public he0(yd0 yd0Var, se0 se0Var, pd0 pd0Var) {
        this.c = yd0Var;
        this.a = se0Var;
        this.b = pd0Var;
    }

    @Override // defpackage.kb0
    public final void a(we0 we0Var, Map map) {
        synchronized (this.c.a) {
            if (this.a.a() != -1 && this.a.a() != 1) {
                yd0 yd0Var = this.c;
                yd0Var.h = 0;
                yd0Var.e.zzg(this.b);
                se0 se0Var = this.a;
                se0Var.a.a(this.b);
                this.c.g = this.a;
                zzd.zzed("Successfully loaded JS Engine.");
            }
        }
    }
}
