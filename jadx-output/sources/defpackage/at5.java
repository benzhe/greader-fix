package defpackage;

import android.database.Cursor;
import android.database.SQLException;
import defpackage.ns5;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class at5 implements sr5 {
    public final ns5.a a = new ns5.a();
    public final gt5 b;

    public at5(gt5 gt5Var) {
        this.b = gt5Var;
    }

    @Override // defpackage.sr5
    public List<iu5> a(String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQueryWithFactory = this.b.i.rawQueryWithFactory(new ht5(new Object[]{str}), "SELECT parent FROM collection_parents WHERE collection_id = ?", null, null);
        while (cursorRawQueryWithFactory.moveToNext()) {
            try {
                arrayList.add(c50.K(cursorRawQueryWithFactory.getString(0)));
            } catch (Throwable th) {
                if (cursorRawQueryWithFactory != null) {
                    try {
                        cursorRawQueryWithFactory.close();
                    } catch (Throwable unused) {
                    }
                }
                throw th;
            }
        }
        cursorRawQueryWithFactory.close();
        return arrayList;
    }

    public void b(iu5 iu5Var) throws SQLException {
        bx5.c(iu5Var.I() % 2 == 1, "Expected a collection path.", new Object[0]);
        if (this.a.a(iu5Var)) {
            this.b.i.execSQL("INSERT OR REPLACE INTO collection_parents (collection_id, parent) VALUES (?, ?)", new Object[]{iu5Var.x(), c50.Q(iu5Var.L())});
        }
    }
}
