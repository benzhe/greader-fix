package defpackage;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class yv0 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ int g;
    public final /* synthetic */ int h;
    public final /* synthetic */ zv0 i;

    public yv0(zv0 zv0Var, String str, String str2, int i, int i2) {
        this.i = zv0Var;
        this.e = str;
        this.f = str2;
        this.g = i;
        this.h = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.e);
        map.put("cachedSrc", this.f);
        map.put("bytesLoaded", Integer.toString(this.g));
        map.put("totalBytes", Integer.toString(this.h));
        map.put("cacheReady", "0");
        zv0.j(this.i, "onPrecacheEvent", map);
    }
}
