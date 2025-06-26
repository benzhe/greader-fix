package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class m61<AdT> implements cb3<j61<AdT>> {
    public final mb3<Map<String, jz1<AdT>>> a;

    public m61(mb3<Map<String, jz1<AdT>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new j61(this.a.get());
    }
}
