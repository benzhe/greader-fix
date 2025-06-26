package defpackage;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class cw0 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ long g;
    public final /* synthetic */ zv0 h;

    public cw0(zv0 zv0Var, String str, String str2, long j) {
        this.h = zv0Var;
        this.e = str;
        this.f = str2;
        this.g = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheComplete");
        map.put("src", this.e);
        map.put("cachedSrc", this.f);
        map.put("totalDuration", Long.toString(this.g));
        zv0.j(this.h, "onPrecacheEvent", map);
    }
}
