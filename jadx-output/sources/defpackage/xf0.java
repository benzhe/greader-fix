package defpackage;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final /* synthetic */ class xf0 implements cv2 {
    public final uf0 a;
    public final Object b;

    public xf0(uf0 uf0Var, Object obj) {
        this.a = uf0Var;
        this.b = obj;
    }

    @Override // defpackage.cv2
    public final aw2 a(Object obj) throws JSONException {
        uf0 uf0Var = this.a;
        Object obj2 = this.b;
        Objects.requireNonNull(uf0Var);
        xs0 xs0Var = new xs0();
        zzr.zzkv();
        String strZzzr = zzj.zzzr();
        va0.p.b(strZzzr, new wf0(uf0Var, xs0Var));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", strZzzr);
        jSONObject.put("args", uf0Var.b.c(obj2));
        ((we0) obj).Z(uf0Var.c, jSONObject);
        return xs0Var;
    }
}
