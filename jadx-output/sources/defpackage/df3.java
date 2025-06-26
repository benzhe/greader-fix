package defpackage;

import com.google.android.gms.internal.ads.zzht;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class df3 implements Runnable {
    public final /* synthetic */ zzht e;
    public final /* synthetic */ ye3 f;

    public df3(ye3 ye3Var, zzht zzhtVar) {
        this.f = ye3Var;
        this.e = zzhtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ze3 ze3Var = this.f.b;
        zzht zzhtVar = this.e;
        iu0 iu0Var = ((cv0) ze3Var).n.get();
        if (!((Boolean) os3.j.f.a(y40.l1)).booleanValue() || iu0Var == null || zzhtVar == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("audioMime", zzhtVar.i);
        map.put("audioSampleMime", zzhtVar.j);
        map.put("audioCodec", zzhtVar.g);
        iu0Var.x("onMetadataEvent", map);
    }
}
