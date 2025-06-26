package defpackage;

import android.net.Uri;
import java.util.Map;

/* loaded from: classes.dex */
public final class aq2 {
    public final String a = k60.b.a();

    public final String a(Map<String, String> map) {
        Uri.Builder builderBuildUpon = Uri.parse(this.a).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return builderBuildUpon.build().toString();
    }
}
