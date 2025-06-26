package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class j61<AdT> implements k61<AdT> {
    public final Map<String, jz1<AdT>> a;

    public j61(Map<String, jz1<AdT>> map) {
        this.a = map;
    }

    @Override // defpackage.k61
    public final jz1<AdT> a(int i, String str) {
        return this.a.get(str);
    }
}
