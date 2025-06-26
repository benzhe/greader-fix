package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class zp extends ConcurrentHashMap<String, String> {
    public static final zp f = new zp();
    public final Object e;

    public zp() {
        super(180, 0.8f, 4);
        this.e = new Object();
    }
}
