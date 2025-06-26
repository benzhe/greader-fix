package androidx.work.impl;

import android.content.Context;
import android.database.SQLException;
import defpackage.ah;
import defpackage.bh;
import defpackage.bm;
import defpackage.ch;
import defpackage.cm;
import defpackage.em;
import defpackage.fm;
import defpackage.gg;
import defpackage.hm;
import defpackage.im;
import defpackage.kg;
import defpackage.mg;
import defpackage.vl;
import defpackage.wg;
import defpackage.wl;
import defpackage.xg;
import defpackage.yl;
import defpackage.zl;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {
    public static final /* synthetic */ int q = 0;
    public volatile em l;
    public volatile vl m;
    public volatile hm n;
    public volatile yl o;
    public volatile bm p;

    public class a extends mg.a {
        public a(int i) {
            super(i);
        }

        @Override // mg.a
        public void a(wg wgVar) throws SQLException {
            ((ah) wgVar).e.execSQL("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            ah ahVar = (ah) wgVar;
            ahVar.e.execSQL("CREATE  INDEX `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            ahVar.e.execSQL("CREATE  INDEX `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            ahVar.e.execSQL("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
            ahVar.e.execSQL("CREATE  INDEX `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            ahVar.e.execSQL("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            ahVar.e.execSQL("CREATE  INDEX `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            ahVar.e.execSQL("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            ahVar.e.execSQL("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            ahVar.e.execSQL("CREATE  INDEX `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            ahVar.e.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            ahVar.e.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c84d23ade98552f1cec71088c1f0794c')");
        }
    }

    @Override // defpackage.lg
    public kg e() {
        return new kg(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName");
    }

    @Override // defpackage.lg
    public xg f(gg ggVar) {
        mg mgVar = new mg(ggVar, new a(6), "c84d23ade98552f1cec71088c1f0794c", "1db8206f0da6aa81bbdd2d99a82d9e14");
        Context context = ggVar.b;
        String str = ggVar.c;
        if (context == null) {
            throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
        }
        Objects.requireNonNull((ch) ggVar.a);
        return new bh(context, str, mgVar);
    }

    @Override // androidx.work.impl.WorkDatabase
    public vl k() {
        vl vlVar;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            if (this.m == null) {
                this.m = new wl(this);
            }
            vlVar = this.m;
        }
        return vlVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public yl l() {
        yl ylVar;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            if (this.o == null) {
                this.o = new zl(this);
            }
            ylVar = this.o;
        }
        return ylVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public bm m() {
        bm bmVar;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            if (this.p == null) {
                this.p = new cm(this);
            }
            bmVar = this.p;
        }
        return bmVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public em n() {
        em emVar;
        if (this.l != null) {
            return this.l;
        }
        synchronized (this) {
            if (this.l == null) {
                this.l = new fm(this);
            }
            emVar = this.l;
        }
        return emVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public hm o() {
        hm hmVar;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            if (this.n == null) {
                this.n = new im(this);
            }
            hmVar = this.n;
        }
        return hmVar;
    }
}
