package defpackage;

import java.io.ByteArrayInputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final /* synthetic */ class ff0 implements bf0 {
    public static final bf0 a = new ff0();

    @Override // defpackage.bf0
    public final Object a(JSONObject jSONObject) {
        Charset charset = gf0.a;
        return new ByteArrayInputStream(jSONObject.toString().getBytes(gf0.a));
    }
}
