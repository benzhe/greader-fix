package defpackage;

import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c42 implements lz1<vi0, g12> {
    public final i52 a;

    public c42(i52 i52Var) {
        this.a = i52Var;
    }

    @Override // defpackage.lz1
    public final mz1<vi0, g12> a(String str, JSONObject jSONObject) throws pl2 {
        vi0 vi0VarA = this.a.a(str);
        if (vi0VarA == null) {
            return null;
        }
        return new mz1<>(vi0VarA, new g12(), str);
    }
}
