package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import defpackage.e27;
import defpackage.j27;
import java.io.IOException;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public class m17 extends j27 {
    public final Context a;
    public final Object b = new Object();
    public AssetManager c;

    public m17(Context context) {
        this.a = context;
    }

    @Override // defpackage.j27
    public boolean c(h27 h27Var) {
        Uri uri = h27Var.c;
        return StringLookupFactory.KEY_FILE.equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // defpackage.j27
    public j27.a f(h27 h27Var, int i) throws IOException {
        if (this.c == null) {
            synchronized (this.b) {
                if (this.c == null) {
                    this.c = this.a.getAssets();
                }
            }
        }
        return new j27.a(n56.e2(this.c.open(h27Var.c.toString().substring(22))), e27.d.DISK);
    }
}
