package defpackage;

import java.util.Map;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public final class qa0 implements kb0<Object> {
    public final ta0 a;

    public qa0(ta0 ta0Var) {
        this.a = ta0Var;
    }

    @Override // defpackage.kb0
    public final void a(Object obj, Map<String, String> map) {
        String str = map.get(InetAddressKeys.KEY_NAME);
        if (str == null) {
            is0.zzez("App event with no name parameter.");
        } else {
            this.a.onAppEvent(str, map.get("info"));
        }
    }
}
