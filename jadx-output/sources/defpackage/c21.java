package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class c21 implements v11 {
    public final CookieManager a;

    public c21(Context context) {
        this.a = zzr.zzkx().zzbi(context);
    }

    @Override // defpackage.v11
    public final void a(Map<String, String> map) {
        Object next;
        if (this.a == null) {
            return;
        }
        if (map.get("clear") == null) {
            String str = map.get("cookie");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.a.setCookie((String) os3.j.f.a(y40.x0), str);
            return;
        }
        String str2 = (String) os3.j.f.a(y40.x0);
        String cookie = this.a.getCookie(str2);
        if (cookie != null) {
            bt2 bt2Var = new bt2(new dt2(new ss2(';')));
            dt2 dt2Var = bt2Var.b;
            Objects.requireNonNull(dt2Var);
            ct2 ct2Var = new ct2(dt2Var, bt2Var, cookie);
            ArrayList arrayList = new ArrayList();
            while (ct2Var.hasNext()) {
                arrayList.add((String) ct2Var.next());
            }
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            for (int i = 0; i < listUnmodifiableList.size(); i++) {
                CookieManager cookieManager = this.a;
                String str3 = (String) listUnmodifiableList.get(i);
                bt2 bt2Var2 = new bt2(new dt2(new ss2('=')));
                Objects.requireNonNull(str3);
                Iterable ft2Var = new ft2(bt2Var2, str3);
                if (ft2Var instanceof List) {
                    next = ((List) ft2Var).get(0);
                } else {
                    Iterator<String> it = ft2Var.iterator();
                    c50.k(true, "numberToAdvance must be nonnegative");
                    et2 et2Var = (et2) it;
                    if (!et2Var.hasNext()) {
                        throw new IndexOutOfBoundsException(jo.O(91, "position (0) must be less than the number of elements that remained (0", ")"));
                    }
                    next = et2Var.next();
                }
                String strValueOf = String.valueOf((String) next);
                String strValueOf2 = String.valueOf((String) os3.j.f.a(y40.n0));
                cookieManager.setCookie(str2, strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            }
        }
    }
}
