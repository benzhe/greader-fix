package defpackage;

import android.content.Context;
import android.database.Cursor;
import com.noinnion.android.greader.provider.ReaderProvider;

/* loaded from: classes2.dex */
public class hr6 extends vm6<ew6, Cursor> {
    public hr6(Context context) {
        super(context);
    }

    @Override // defpackage.vm6
    public Cursor c(ew6 ew6Var) throws Exception {
        ew6 ew6Var2 = ew6Var;
        Context context = this.a;
        if (ew6Var2.d) {
            return ep6.o(context, ew6Var2.f, ew6Var2.c, true, false, ew6Var2.e(context), ew6Var2.d());
        }
        if (ew6Var2.e) {
            return ep6.o(context, ew6Var2.f, ew6Var2.c, false, true, ew6Var2.e(context), ew6Var2.d());
        }
        ip6 ip6Var = ew6Var2.a;
        if (ip6Var == null) {
            lp6 lp6Var = ew6Var2.b;
            return lp6Var != null ? lp6Var.g == 11 ? ep6.p(context, lp6Var.f, ew6Var2.f, ew6Var2.c, ew6Var2.e(context), ew6Var2.d()) : ep6.r(context, lp6Var.f, ew6Var2.f, ew6Var2.c, ew6Var2.e(context), ew6Var2.d()) : ep6.o(context, ew6Var2.f, ew6Var2.c, false, false, ew6Var2.e(context), ew6Var2.d());
        }
        long j = ip6Var.e;
        boolean z = ew6Var2.f;
        String str = ew6Var2.c;
        String strE = ew6Var2.e(context);
        StringBuilder sb = new StringBuilder(ep6.v(z, str, ew6Var2.d()));
        sb.append(sb.length() > 0 ? " AND " : "");
        sb.append("item.sub_id = ?");
        return context.getContentResolver().query(ReaderProvider.t, null, new String(sb), new String[]{String.valueOf(j)}, strE);
    }
}
