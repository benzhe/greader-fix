package defpackage;

import android.database.Cursor;
import defpackage.d0;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class fm implements em {
    public final lg a;
    public final hg b;
    public final og c;
    public final og d;
    public final og e;
    public final og f;
    public final og g;
    public final og h;
    public final og i;

    public class a extends hg<dm> {
        public a(fm fmVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX WARN: Can't wrap try/catch for region: R(6:47|(2:98|(2:94|48))|(5:100|49|(2:52|50)|102|54)|92|69|73) */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x01b4, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x01b5, code lost:
        
            r0.printStackTrace();
         */
        /* JADX WARN: Removed duplicated region for block: B:75:0x01bf  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x01c7  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x01ac -> B:92:0x01b0). Please report as a decompilation issue!!! */
        @Override // defpackage.hg
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void d(defpackage.eh r17, defpackage.dm r18) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 531
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: fm.a.d(eh, java.lang.Object):void");
        }
    }

    public class b extends og {
        public b(fm fmVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    public class c extends og {
        public c(fm fmVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    public class d extends og {
        public d(fm fmVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "UPDATE workspec SET period_start_time=? WHERE id=?";
        }
    }

    public class e extends og {
        public e(fm fmVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    public class f extends og {
        public f(fm fmVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    public class g extends og {
        public g(fm fmVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    public class h extends og {
        public h(fm fmVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    public fm(lg lgVar) {
        this.a = lgVar;
        this.b = new a(this, lgVar);
        this.c = new b(this, lgVar);
        this.d = new c(this, lgVar);
        this.e = new d(this, lgVar);
        this.f = new e(this, lgVar);
        this.g = new f(this, lgVar);
        this.h = new g(this, lgVar);
        this.i = new h(this, lgVar);
        new AtomicBoolean(false);
    }

    public List<String> a() {
        ng ngVarC = ng.c("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.a.b();
        Cursor cursorA = qg.a(this.a, ngVarC, false);
        try {
            ArrayList arrayList = new ArrayList(cursorA.getCount());
            while (cursorA.moveToNext()) {
                arrayList.add(cursorA.getString(0));
            }
            return arrayList;
        } finally {
            cursorA.close();
            ngVarC.i();
        }
    }

    public List<dm> b(int i) throws Throwable {
        ng ngVar;
        ng ngVarC = ng.c("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        ngVarC.e(1, i);
        this.a.b();
        Cursor cursorA = qg.a(this.a, ngVarC, false);
        try {
            int iB = d0.h.B(cursorA, "id");
            int iB2 = d0.h.B(cursorA, "state");
            int iB3 = d0.h.B(cursorA, "worker_class_name");
            int iB4 = d0.h.B(cursorA, "input_merger_class_name");
            int iB5 = d0.h.B(cursorA, "input");
            int iB6 = d0.h.B(cursorA, "output");
            int iB7 = d0.h.B(cursorA, "initial_delay");
            int iB8 = d0.h.B(cursorA, "interval_duration");
            int iB9 = d0.h.B(cursorA, "flex_duration");
            int iB10 = d0.h.B(cursorA, "run_attempt_count");
            int iB11 = d0.h.B(cursorA, "backoff_policy");
            int iB12 = d0.h.B(cursorA, "backoff_delay_duration");
            int iB13 = d0.h.B(cursorA, "period_start_time");
            int iB14 = d0.h.B(cursorA, "minimum_retention_duration");
            ngVar = ngVarC;
            try {
                int iB15 = d0.h.B(cursorA, "schedule_requested_at");
                int iB16 = d0.h.B(cursorA, "required_network_type");
                int i2 = iB14;
                int iB17 = d0.h.B(cursorA, "requires_charging");
                int i3 = iB13;
                int iB18 = d0.h.B(cursorA, "requires_device_idle");
                int i4 = iB12;
                int iB19 = d0.h.B(cursorA, "requires_battery_not_low");
                int i5 = iB11;
                int iB20 = d0.h.B(cursorA, "requires_storage_not_low");
                int i6 = iB10;
                int iB21 = d0.h.B(cursorA, "trigger_content_update_delay");
                int i7 = iB9;
                int iB22 = d0.h.B(cursorA, "trigger_max_content_delay");
                int i8 = iB8;
                int iB23 = d0.h.B(cursorA, "content_uri_triggers");
                int i9 = iB7;
                int i10 = iB6;
                ArrayList arrayList = new ArrayList(cursorA.getCount());
                while (cursorA.moveToNext()) {
                    String string = cursorA.getString(iB);
                    int i11 = iB;
                    String string2 = cursorA.getString(iB3);
                    int i12 = iB3;
                    qj qjVar = new qj();
                    int i13 = iB16;
                    qjVar.a = bi.H(cursorA.getInt(iB16));
                    qjVar.b = cursorA.getInt(iB17) != 0;
                    qjVar.c = cursorA.getInt(iB18) != 0;
                    qjVar.d = cursorA.getInt(iB19) != 0;
                    qjVar.e = cursorA.getInt(iB20) != 0;
                    int i14 = iB17;
                    int i15 = iB19;
                    qjVar.f = cursorA.getLong(iB21);
                    qjVar.g = cursorA.getLong(iB22);
                    qjVar.h = bi.a(cursorA.getBlob(iB23));
                    dm dmVar = new dm(string, string2);
                    dmVar.b = bi.I(cursorA.getInt(iB2));
                    dmVar.d = cursorA.getString(iB4);
                    dmVar.e = sj.a(cursorA.getBlob(iB5));
                    int i16 = i10;
                    dmVar.f = sj.a(cursorA.getBlob(i16));
                    int i17 = iB18;
                    int i18 = i9;
                    dmVar.g = cursorA.getLong(i18);
                    int i19 = iB4;
                    int i20 = i8;
                    int i21 = iB5;
                    dmVar.h = cursorA.getLong(i20);
                    int i22 = i7;
                    dmVar.i = cursorA.getLong(i22);
                    int i23 = i6;
                    dmVar.k = cursorA.getInt(i23);
                    int i24 = i5;
                    i10 = i16;
                    dmVar.l = bi.G(cursorA.getInt(i24));
                    i6 = i23;
                    i5 = i24;
                    int i25 = i4;
                    dmVar.m = cursorA.getLong(i25);
                    int i26 = i3;
                    dmVar.n = cursorA.getLong(i26);
                    int i27 = i2;
                    dmVar.o = cursorA.getLong(i27);
                    int i28 = iB15;
                    dmVar.p = cursorA.getLong(i28);
                    dmVar.j = qjVar;
                    arrayList.add(dmVar);
                    i4 = i25;
                    iB17 = i14;
                    iB = i11;
                    iB3 = i12;
                    iB19 = i15;
                    iB16 = i13;
                    i9 = i18;
                    i2 = i27;
                    iB15 = i28;
                    iB4 = i19;
                    i3 = i26;
                    iB5 = i21;
                    i8 = i20;
                    i7 = i22;
                    iB18 = i17;
                }
                cursorA.close();
                ngVar.i();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorA.close();
                ngVar.i();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            ngVar = ngVarC;
        }
    }

    public List<dm> c() throws Throwable {
        ng ngVar;
        ng ngVarC = ng.c("SELECT * FROM workspec WHERE state=1", 0);
        this.a.b();
        Cursor cursorA = qg.a(this.a, ngVarC, false);
        try {
            int iB = d0.h.B(cursorA, "id");
            int iB2 = d0.h.B(cursorA, "state");
            int iB3 = d0.h.B(cursorA, "worker_class_name");
            int iB4 = d0.h.B(cursorA, "input_merger_class_name");
            int iB5 = d0.h.B(cursorA, "input");
            int iB6 = d0.h.B(cursorA, "output");
            int iB7 = d0.h.B(cursorA, "initial_delay");
            int iB8 = d0.h.B(cursorA, "interval_duration");
            int iB9 = d0.h.B(cursorA, "flex_duration");
            int iB10 = d0.h.B(cursorA, "run_attempt_count");
            int iB11 = d0.h.B(cursorA, "backoff_policy");
            int iB12 = d0.h.B(cursorA, "backoff_delay_duration");
            int iB13 = d0.h.B(cursorA, "period_start_time");
            int iB14 = d0.h.B(cursorA, "minimum_retention_duration");
            ngVar = ngVarC;
            try {
                int iB15 = d0.h.B(cursorA, "schedule_requested_at");
                int iB16 = d0.h.B(cursorA, "required_network_type");
                int i = iB14;
                int iB17 = d0.h.B(cursorA, "requires_charging");
                int i2 = iB13;
                int iB18 = d0.h.B(cursorA, "requires_device_idle");
                int i3 = iB12;
                int iB19 = d0.h.B(cursorA, "requires_battery_not_low");
                int i4 = iB11;
                int iB20 = d0.h.B(cursorA, "requires_storage_not_low");
                int i5 = iB10;
                int iB21 = d0.h.B(cursorA, "trigger_content_update_delay");
                int i6 = iB9;
                int iB22 = d0.h.B(cursorA, "trigger_max_content_delay");
                int i7 = iB8;
                int iB23 = d0.h.B(cursorA, "content_uri_triggers");
                int i8 = iB7;
                int i9 = iB6;
                ArrayList arrayList = new ArrayList(cursorA.getCount());
                while (cursorA.moveToNext()) {
                    String string = cursorA.getString(iB);
                    int i10 = iB;
                    String string2 = cursorA.getString(iB3);
                    int i11 = iB3;
                    qj qjVar = new qj();
                    int i12 = iB16;
                    qjVar.a = bi.H(cursorA.getInt(iB16));
                    qjVar.b = cursorA.getInt(iB17) != 0;
                    qjVar.c = cursorA.getInt(iB18) != 0;
                    qjVar.d = cursorA.getInt(iB19) != 0;
                    qjVar.e = cursorA.getInt(iB20) != 0;
                    int i13 = iB17;
                    int i14 = iB18;
                    qjVar.f = cursorA.getLong(iB21);
                    qjVar.g = cursorA.getLong(iB22);
                    qjVar.h = bi.a(cursorA.getBlob(iB23));
                    dm dmVar = new dm(string, string2);
                    dmVar.b = bi.I(cursorA.getInt(iB2));
                    dmVar.d = cursorA.getString(iB4);
                    dmVar.e = sj.a(cursorA.getBlob(iB5));
                    int i15 = i9;
                    dmVar.f = sj.a(cursorA.getBlob(i15));
                    int i16 = iB4;
                    int i17 = i8;
                    int i18 = iB5;
                    dmVar.g = cursorA.getLong(i17);
                    int i19 = i7;
                    dmVar.h = cursorA.getLong(i19);
                    int i20 = i6;
                    dmVar.i = cursorA.getLong(i20);
                    int i21 = i5;
                    dmVar.k = cursorA.getInt(i21);
                    int i22 = i4;
                    i9 = i15;
                    dmVar.l = bi.G(cursorA.getInt(i22));
                    int i23 = i3;
                    dmVar.m = cursorA.getLong(i23);
                    i5 = i21;
                    int i24 = i2;
                    dmVar.n = cursorA.getLong(i24);
                    i2 = i24;
                    int i25 = i;
                    dmVar.o = cursorA.getLong(i25);
                    i = i25;
                    int i26 = iB15;
                    dmVar.p = cursorA.getLong(i26);
                    dmVar.j = qjVar;
                    arrayList.add(dmVar);
                    iB15 = i26;
                    iB4 = i16;
                    iB17 = i13;
                    iB5 = i18;
                    iB3 = i11;
                    iB18 = i14;
                    i6 = i20;
                    i8 = i17;
                    i3 = i23;
                    i7 = i19;
                    iB = i10;
                    i4 = i22;
                    iB16 = i12;
                }
                cursorA.close();
                ngVar.i();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorA.close();
                ngVar.i();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            ngVar = ngVarC;
        }
    }

    public List<dm> d() {
        ng ngVar;
        ng ngVarC = ng.c("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.a.b();
        Cursor cursorA = qg.a(this.a, ngVarC, false);
        try {
            int iB = d0.h.B(cursorA, "id");
            int iB2 = d0.h.B(cursorA, "state");
            int iB3 = d0.h.B(cursorA, "worker_class_name");
            int iB4 = d0.h.B(cursorA, "input_merger_class_name");
            int iB5 = d0.h.B(cursorA, "input");
            int iB6 = d0.h.B(cursorA, "output");
            int iB7 = d0.h.B(cursorA, "initial_delay");
            int iB8 = d0.h.B(cursorA, "interval_duration");
            int iB9 = d0.h.B(cursorA, "flex_duration");
            int iB10 = d0.h.B(cursorA, "run_attempt_count");
            int iB11 = d0.h.B(cursorA, "backoff_policy");
            int iB12 = d0.h.B(cursorA, "backoff_delay_duration");
            int iB13 = d0.h.B(cursorA, "period_start_time");
            int iB14 = d0.h.B(cursorA, "minimum_retention_duration");
            ngVar = ngVarC;
            try {
                int iB15 = d0.h.B(cursorA, "schedule_requested_at");
                int iB16 = d0.h.B(cursorA, "required_network_type");
                int i = iB14;
                int iB17 = d0.h.B(cursorA, "requires_charging");
                int i2 = iB13;
                int iB18 = d0.h.B(cursorA, "requires_device_idle");
                int i3 = iB12;
                int iB19 = d0.h.B(cursorA, "requires_battery_not_low");
                int i4 = iB11;
                int iB20 = d0.h.B(cursorA, "requires_storage_not_low");
                int i5 = iB10;
                int iB21 = d0.h.B(cursorA, "trigger_content_update_delay");
                int i6 = iB9;
                int iB22 = d0.h.B(cursorA, "trigger_max_content_delay");
                int i7 = iB8;
                int iB23 = d0.h.B(cursorA, "content_uri_triggers");
                int i8 = iB7;
                int i9 = iB6;
                ArrayList arrayList = new ArrayList(cursorA.getCount());
                while (cursorA.moveToNext()) {
                    String string = cursorA.getString(iB);
                    int i10 = iB;
                    String string2 = cursorA.getString(iB3);
                    int i11 = iB3;
                    qj qjVar = new qj();
                    int i12 = iB16;
                    qjVar.a = bi.H(cursorA.getInt(iB16));
                    qjVar.b = cursorA.getInt(iB17) != 0;
                    qjVar.c = cursorA.getInt(iB18) != 0;
                    qjVar.d = cursorA.getInt(iB19) != 0;
                    qjVar.e = cursorA.getInt(iB20) != 0;
                    int i13 = iB17;
                    int i14 = iB18;
                    qjVar.f = cursorA.getLong(iB21);
                    qjVar.g = cursorA.getLong(iB22);
                    qjVar.h = bi.a(cursorA.getBlob(iB23));
                    dm dmVar = new dm(string, string2);
                    dmVar.b = bi.I(cursorA.getInt(iB2));
                    dmVar.d = cursorA.getString(iB4);
                    dmVar.e = sj.a(cursorA.getBlob(iB5));
                    int i15 = i9;
                    dmVar.f = sj.a(cursorA.getBlob(i15));
                    int i16 = iB4;
                    int i17 = i8;
                    int i18 = iB5;
                    dmVar.g = cursorA.getLong(i17);
                    int i19 = i7;
                    dmVar.h = cursorA.getLong(i19);
                    int i20 = i6;
                    dmVar.i = cursorA.getLong(i20);
                    int i21 = i5;
                    dmVar.k = cursorA.getInt(i21);
                    int i22 = i4;
                    i9 = i15;
                    dmVar.l = bi.G(cursorA.getInt(i22));
                    int i23 = i3;
                    dmVar.m = cursorA.getLong(i23);
                    i5 = i21;
                    int i24 = i2;
                    dmVar.n = cursorA.getLong(i24);
                    i2 = i24;
                    int i25 = i;
                    dmVar.o = cursorA.getLong(i25);
                    i = i25;
                    int i26 = iB15;
                    dmVar.p = cursorA.getLong(i26);
                    dmVar.j = qjVar;
                    arrayList.add(dmVar);
                    iB15 = i26;
                    iB4 = i16;
                    iB17 = i13;
                    iB5 = i18;
                    iB3 = i11;
                    iB18 = i14;
                    i6 = i20;
                    i8 = i17;
                    i3 = i23;
                    i7 = i19;
                    iB = i10;
                    i4 = i22;
                    iB16 = i12;
                }
                cursorA.close();
                ngVar.i();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorA.close();
                ngVar.i();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            ngVar = ngVarC;
        }
    }

    public ak e(String str) {
        ng ngVarC = ng.c("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            ngVarC.f(1);
        } else {
            ngVarC.g(1, str);
        }
        this.a.b();
        Cursor cursorA = qg.a(this.a, ngVarC, false);
        try {
            return cursorA.moveToFirst() ? bi.I(cursorA.getInt(0)) : null;
        } finally {
            cursorA.close();
            ngVarC.i();
        }
    }

    public List<String> f(String str) {
        ng ngVarC = ng.c("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            ngVarC.f(1);
        } else {
            ngVarC.g(1, str);
        }
        this.a.b();
        Cursor cursorA = qg.a(this.a, ngVarC, false);
        try {
            ArrayList arrayList = new ArrayList(cursorA.getCount());
            while (cursorA.moveToNext()) {
                arrayList.add(cursorA.getString(0));
            }
            return arrayList;
        } finally {
            cursorA.close();
            ngVarC.i();
        }
    }

    public List<String> g(String str) {
        ng ngVarC = ng.c("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            ngVarC.f(1);
        } else {
            ngVarC.g(1, str);
        }
        this.a.b();
        Cursor cursorA = qg.a(this.a, ngVarC, false);
        try {
            ArrayList arrayList = new ArrayList(cursorA.getCount());
            while (cursorA.moveToNext()) {
                arrayList.add(cursorA.getString(0));
            }
            return arrayList;
        } finally {
            cursorA.close();
            ngVarC.i();
        }
    }

    public dm h(String str) throws Throwable {
        ng ngVar;
        dm dmVar;
        ng ngVarC = ng.c("SELECT * FROM workspec WHERE id=?", 1);
        if (str == null) {
            ngVarC.f(1);
        } else {
            ngVarC.g(1, str);
        }
        this.a.b();
        Cursor cursorA = qg.a(this.a, ngVarC, false);
        try {
            int iB = d0.h.B(cursorA, "id");
            int iB2 = d0.h.B(cursorA, "state");
            int iB3 = d0.h.B(cursorA, "worker_class_name");
            int iB4 = d0.h.B(cursorA, "input_merger_class_name");
            int iB5 = d0.h.B(cursorA, "input");
            int iB6 = d0.h.B(cursorA, "output");
            int iB7 = d0.h.B(cursorA, "initial_delay");
            int iB8 = d0.h.B(cursorA, "interval_duration");
            int iB9 = d0.h.B(cursorA, "flex_duration");
            int iB10 = d0.h.B(cursorA, "run_attempt_count");
            int iB11 = d0.h.B(cursorA, "backoff_policy");
            int iB12 = d0.h.B(cursorA, "backoff_delay_duration");
            int iB13 = d0.h.B(cursorA, "period_start_time");
            int iB14 = d0.h.B(cursorA, "minimum_retention_duration");
            ngVar = ngVarC;
            try {
                int iB15 = d0.h.B(cursorA, "schedule_requested_at");
                int iB16 = d0.h.B(cursorA, "required_network_type");
                int iB17 = d0.h.B(cursorA, "requires_charging");
                int iB18 = d0.h.B(cursorA, "requires_device_idle");
                int iB19 = d0.h.B(cursorA, "requires_battery_not_low");
                int iB20 = d0.h.B(cursorA, "requires_storage_not_low");
                int iB21 = d0.h.B(cursorA, "trigger_content_update_delay");
                int iB22 = d0.h.B(cursorA, "trigger_max_content_delay");
                int iB23 = d0.h.B(cursorA, "content_uri_triggers");
                if (cursorA.moveToFirst()) {
                    String string = cursorA.getString(iB);
                    String string2 = cursorA.getString(iB3);
                    qj qjVar = new qj();
                    qjVar.a = bi.H(cursorA.getInt(iB16));
                    qjVar.b = cursorA.getInt(iB17) != 0;
                    qjVar.c = cursorA.getInt(iB18) != 0;
                    qjVar.d = cursorA.getInt(iB19) != 0;
                    qjVar.e = cursorA.getInt(iB20) != 0;
                    qjVar.f = cursorA.getLong(iB21);
                    qjVar.g = cursorA.getLong(iB22);
                    qjVar.h = bi.a(cursorA.getBlob(iB23));
                    dmVar = new dm(string, string2);
                    dmVar.b = bi.I(cursorA.getInt(iB2));
                    dmVar.d = cursorA.getString(iB4);
                    dmVar.e = sj.a(cursorA.getBlob(iB5));
                    dmVar.f = sj.a(cursorA.getBlob(iB6));
                    dmVar.g = cursorA.getLong(iB7);
                    dmVar.h = cursorA.getLong(iB8);
                    dmVar.i = cursorA.getLong(iB9);
                    dmVar.k = cursorA.getInt(iB10);
                    dmVar.l = bi.G(cursorA.getInt(iB11));
                    dmVar.m = cursorA.getLong(iB12);
                    dmVar.n = cursorA.getLong(iB13);
                    dmVar.o = cursorA.getLong(iB14);
                    dmVar.p = cursorA.getLong(iB15);
                    dmVar.j = qjVar;
                } else {
                    dmVar = null;
                }
                cursorA.close();
                ngVar.i();
                return dmVar;
            } catch (Throwable th) {
                th = th;
                cursorA.close();
                ngVar.i();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            ngVar = ngVarC;
        }
    }

    public int i(String str) {
        this.a.b();
        eh ehVarA = this.f.a();
        if (str == null) {
            ehVarA.e.bindNull(1);
        } else {
            ehVarA.e.bindString(1, str);
        }
        this.a.c();
        try {
            int iA = ehVarA.a();
            this.a.j();
            this.a.g();
            og ogVar = this.f;
            if (ehVarA == ogVar.c) {
                ogVar.a.set(false);
            }
            return iA;
        } catch (Throwable th) {
            this.a.g();
            this.f.c(ehVarA);
            throw th;
        }
    }

    public int j(String str, long j) {
        this.a.b();
        eh ehVarA = this.h.a();
        ehVarA.e.bindLong(1, j);
        if (str == null) {
            ehVarA.e.bindNull(2);
        } else {
            ehVarA.e.bindString(2, str);
        }
        this.a.c();
        try {
            int iA = ehVarA.a();
            this.a.j();
            return iA;
        } finally {
            this.a.g();
            og ogVar = this.h;
            if (ehVarA == ogVar.c) {
                ogVar.a.set(false);
            }
        }
    }

    public int k(String str) {
        this.a.b();
        eh ehVarA = this.g.a();
        if (str == null) {
            ehVarA.e.bindNull(1);
        } else {
            ehVarA.e.bindString(1, str);
        }
        this.a.c();
        try {
            int iA = ehVarA.a();
            this.a.j();
            this.a.g();
            og ogVar = this.g;
            if (ehVarA == ogVar.c) {
                ogVar.a.set(false);
            }
            return iA;
        } catch (Throwable th) {
            this.a.g();
            this.g.c(ehVarA);
            throw th;
        }
    }

    public void l(String str, sj sjVar) throws Throwable {
        this.a.b();
        eh ehVarA = this.d.a();
        byte[] bArrC = sj.c(sjVar);
        if (bArrC == null) {
            ehVarA.e.bindNull(1);
        } else {
            ehVarA.e.bindBlob(1, bArrC);
        }
        if (str == null) {
            ehVarA.e.bindNull(2);
        } else {
            ehVarA.e.bindString(2, str);
        }
        this.a.c();
        try {
            ehVarA.a();
            this.a.j();
            this.a.g();
            og ogVar = this.d;
            if (ehVarA == ogVar.c) {
                ogVar.a.set(false);
            }
        } catch (Throwable th) {
            this.a.g();
            this.d.c(ehVarA);
            throw th;
        }
    }

    public void m(String str, long j) {
        this.a.b();
        eh ehVarA = this.e.a();
        ehVarA.e.bindLong(1, j);
        if (str == null) {
            ehVarA.e.bindNull(2);
        } else {
            ehVarA.e.bindString(2, str);
        }
        this.a.c();
        try {
            ehVarA.a();
            this.a.j();
        } finally {
            this.a.g();
            og ogVar = this.e;
            if (ehVarA == ogVar.c) {
                ogVar.a.set(false);
            }
        }
    }

    public int n(ak akVar, String... strArr) {
        this.a.b();
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE workspec SET state=");
        sb.append("?");
        sb.append(" WHERE id IN (");
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            sb.append("?");
            if (i < length - 1) {
                sb.append(",");
            }
        }
        sb.append(")");
        eh ehVarD = this.a.d(sb.toString());
        ehVarD.e.bindLong(1, bi.Z(akVar));
        int i2 = 2;
        for (String str : strArr) {
            if (str == null) {
                ehVarD.e.bindNull(i2);
            } else {
                ehVarD.e.bindString(i2, str);
            }
            i2++;
        }
        this.a.c();
        try {
            int iA = ehVarD.a();
            this.a.j();
            return iA;
        } finally {
            this.a.g();
        }
    }
}
