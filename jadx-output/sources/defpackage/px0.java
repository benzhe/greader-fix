package defpackage;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes.dex */
public final class px0 implements kb0<xw0> {
    public final /* synthetic */ mx0 a;

    public px0(mx0 mx0Var) {
        this.a = mx0Var;
    }

    @Override // defpackage.kb0
    public final /* synthetic */ void a(xw0 xw0Var, Map map) throws NumberFormatException {
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int i = Integer.parseInt(str);
                synchronized (this.a) {
                    mx0 mx0Var = this.a;
                    if (mx0Var.K != i) {
                        mx0Var.K = i;
                        mx0Var.requestLayout();
                    }
                }
            } catch (Exception e) {
                is0.zzd("Exception occurred while getting webview content height", e);
            }
        }
    }
}
