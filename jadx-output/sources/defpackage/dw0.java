package defpackage;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class dw0 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ int g;
    public final /* synthetic */ zv0 h;

    public dw0(zv0 zv0Var, String str, String str2, int i) {
        this.h = zv0Var;
        this.e = str;
        this.f = str2;
        this.g = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheComplete");
        map.put("src", this.e);
        map.put("cachedSrc", this.f);
        map.put("totalBytes", Integer.toString(this.g));
        zv0.j(this.h, "onPrecacheEvent", map);
    }
}
