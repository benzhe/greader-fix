package defpackage;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes.dex */
public final class b21 implements v11 {
    public final qk2 a;

    public b21(qk2 qk2Var) {
        this.a = qk2Var;
    }

    @Override // defpackage.v11
    public final void a(Map<String, String> map) {
        String str = map.get("render_in_browser");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            qk2 qk2Var = this.a;
            if (Boolean.parseBoolean(str)) {
                qk2Var.b(1, 2);
            } else {
                qk2Var.b(2, 1);
            }
        } catch (Exception unused) {
            throw new IllegalStateException("Invalid render_in_browser state");
        }
    }
}
