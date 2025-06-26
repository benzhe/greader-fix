package defpackage;

import android.content.Context;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import defpackage.e27;
import defpackage.j27;
import java.io.IOException;

/* loaded from: classes2.dex */
public class r17 extends j27 {
    public final Context a;

    public r17(Context context) {
        this.a = context;
    }

    @Override // defpackage.j27
    public boolean c(h27 h27Var) {
        return NSContent.NSTAG.equals(h27Var.c.getScheme());
    }

    @Override // defpackage.j27
    public j27.a f(h27 h27Var, int i) throws IOException {
        return new j27.a(n56.e2(this.a.getContentResolver().openInputStream(h27Var.c)), e27.d.DISK);
    }
}
