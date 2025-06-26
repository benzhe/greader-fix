package defpackage;

import android.content.Context;
import defpackage.e27;
import defpackage.j27;
import defpackage.pb;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public class v17 extends r17 {
    public v17(Context context) {
        super(context);
    }

    @Override // defpackage.r17, defpackage.j27
    public boolean c(h27 h27Var) {
        return StringLookupFactory.KEY_FILE.equals(h27Var.c.getScheme());
    }

    @Override // defpackage.r17, defpackage.j27
    public j27.a f(h27 h27Var, int i) throws Throwable {
        vt7 vt7VarE2 = n56.e2(this.a.getContentResolver().openInputStream(h27Var.c));
        e27.d dVar = e27.d.DISK;
        pb pbVar = new pb(h27Var.c.getPath());
        pb.b bVarD = pbVar.d("Orientation");
        int iF = 1;
        if (bVarD != null) {
            try {
                iF = bVarD.f(pbVar.e);
            } catch (NumberFormatException unused) {
            }
        }
        return new j27.a(null, vt7VarE2, dVar, iF);
    }
}
