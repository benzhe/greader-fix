package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.SQLException;
import android.os.Build;

/* loaded from: classes.dex */
public class mk {
    public static pg a = new a(1, 2);
    public static pg b = new b(3, 4);
    public static pg c = new c(4, 5);

    public static class a extends pg {
        public a(int i, int i2) {
            super(i, i2);
        }

        @Override // defpackage.pg
        public void a(wg wgVar) throws SQLException {
            ((ah) wgVar).e.execSQL("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            ah ahVar = (ah) wgVar;
            ahVar.e.execSQL("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            ahVar.e.execSQL("DROP TABLE IF EXISTS alarmInfo");
            ahVar.e.execSQL("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    }

    public static class b extends pg {
        public b(int i, int i2) {
            super(i, i2);
        }

        @Override // defpackage.pg
        public void a(wg wgVar) throws SQLException {
            if (Build.VERSION.SDK_INT >= 23) {
                ((ah) wgVar).e.execSQL("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
            }
        }
    }

    public static class c extends pg {
        public c(int i, int i2) {
            super(i, i2);
        }

        @Override // defpackage.pg
        public void a(wg wgVar) throws SQLException {
            ((ah) wgVar).e.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            ((ah) wgVar).e.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    }

    public static class d extends pg {
        public final Context c;

        public d(Context context, int i, int i2) {
            super(i, i2);
            this.c = context;
        }

        @Override // defpackage.pg
        public void a(wg wgVar) {
            SharedPreferences sharedPreferences;
            Context context = this.c;
            synchronized (pm.class) {
                sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
            }
            sharedPreferences.edit().putBoolean("reschedule_needed", true).apply();
        }
    }
}
