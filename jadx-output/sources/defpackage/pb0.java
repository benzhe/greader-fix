package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;

/* loaded from: classes.dex */
public final class pb0 implements kb0<Object> {
    public final Context a;

    public pb0(Context context) {
        this.a = context;
    }

    @Override // defpackage.kb0
    public final void a(Object obj, Map<String, String> map) {
        String str;
        if (zzr.zzlt().h(this.a)) {
            String str2 = map.get("eventName");
            str = map.get("eventId");
            str2.hashCode();
            switch (str2) {
                case "_aa":
                    zzr.zzlt().d(this.a, "_aa", str, null);
                    break;
                case "_ac":
                    zzr.zzlt().m(this.a, str);
                    break;
                case "_ai":
                    zzr.zzlt().n(this.a, str);
                    break;
                default:
                    is0.zzex("logScionEvent gmsg contained unsupported eventName");
                    break;
            }
        }
    }
}
