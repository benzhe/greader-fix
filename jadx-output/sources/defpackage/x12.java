package defpackage;

import org.json.JSONObject;

/* loaded from: classes.dex */
public final class x12 implements lz1<zl2, g12> {
    public final nq1 a;

    public x12(nq1 nq1Var) {
        this.a = nq1Var;
    }

    @Override // defpackage.lz1
    public final mz1<zl2, g12> a(String str, JSONObject jSONObject) throws pl2 {
        return new mz1<>(this.a.b(str, jSONObject), new g12(), str);
    }
}
