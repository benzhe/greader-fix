package defpackage;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class n32 implements lz1<zl2, f12> {
    public final Map<String, mz1<zl2, f12>> a = new HashMap();
    public final nq1 b;

    public n32(nq1 nq1Var) {
        this.b = nq1Var;
    }

    @Override // defpackage.lz1
    public final mz1<zl2, f12> a(String str, JSONObject jSONObject) throws pl2 {
        mz1<zl2, f12> mz1Var;
        synchronized (this) {
            mz1Var = this.a.get(str);
            if (mz1Var == null) {
                mz1Var = new mz1<>(this.b.b(str, jSONObject), new f12(), str);
                this.a.put(str, mz1Var);
            }
        }
        return mz1Var;
    }
}
