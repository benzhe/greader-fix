package defpackage;

import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final /* synthetic */ class q72 implements vs2 {
    public static final vs2 a = new q72();

    @Override // defpackage.vs2
    public final Object apply(Object obj) {
        List<String> list = l72.p;
        return ((JSONObject) obj).optString("nas");
    }
}
