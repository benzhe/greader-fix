package defpackage;

import androidx.work.impl.WorkDatabase;
import defpackage.lg;

/* loaded from: classes.dex */
public final class lk extends lg.b {
    @Override // lg.b
    public void a(wg wgVar) {
        ((ah) wgVar).e.beginTransaction();
        try {
            int i = WorkDatabase.k;
            ((ah) wgVar).e.execSQL("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + (System.currentTimeMillis() - WorkDatabase.j) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
            ((ah) wgVar).e.setTransactionSuccessful();
        } finally {
            ((ah) wgVar).e.endTransaction();
        }
    }
}
