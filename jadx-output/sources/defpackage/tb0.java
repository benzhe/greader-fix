package defpackage;

import com.google.android.gms.ads.internal.overlay.zzv;
import java.util.Map;

/* loaded from: classes.dex */
public final class tb0 implements zzv {
    public boolean a = false;
    public final /* synthetic */ Map b;
    public final /* synthetic */ Map c;
    public final /* synthetic */ er3 d;

    public tb0(Map map, Map map2, er3 er3Var) {
        this.b = map;
        this.c = map2;
        this.d = er3Var;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public final void zzaf(boolean z) {
        if (this.a) {
            return;
        }
        this.a = true;
        this.b.put((String) this.c.get("event_id"), Boolean.valueOf(z));
        ((od0) this.d).x("openIntentAsync", this.b);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public final void zzb(y50 y50Var) {
    }
}
