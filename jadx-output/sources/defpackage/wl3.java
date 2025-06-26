package defpackage;

import com.google.android.gms.internal.ads.zzht;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class wl3 implements Runnable {
    public final /* synthetic */ zzht e;
    public final /* synthetic */ rl3 f;

    public wl3(rl3 rl3Var, zzht zzhtVar) {
        this.f = rl3Var;
        this.e = zzhtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        sl3 sl3Var = this.f.b;
        zzht zzhtVar = this.e;
        iu0 iu0Var = ((cv0) sl3Var).n.get();
        if (!((Boolean) os3.j.f.a(y40.l1)).booleanValue() || iu0Var == null || zzhtVar == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("frameRate", String.valueOf(zzhtVar.p));
        map.put("bitRate", String.valueOf(zzhtVar.f));
        int i = zzhtVar.n;
        int i2 = zzhtVar.o;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        map.put("resolution", sb.toString());
        map.put("videoMime", zzhtVar.i);
        map.put("videoSampleMime", zzhtVar.j);
        map.put("videoCodec", zzhtVar.g);
        iu0Var.x("onMetadataEvent", map);
    }
}
