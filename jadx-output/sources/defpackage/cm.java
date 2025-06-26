package defpackage;

/* loaded from: classes.dex */
public final class cm implements bm {
    public final lg a;
    public final hg b;

    public class a extends hg<am> {
        public a(cm cmVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "INSERT OR IGNORE INTO `WorkName`(`name`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // defpackage.hg
        public void d(eh ehVar, am amVar) {
            am amVar2 = amVar;
            String str = amVar2.a;
            if (str == null) {
                ehVar.e.bindNull(1);
            } else {
                ehVar.e.bindString(1, str);
            }
            String str2 = amVar2.b;
            if (str2 == null) {
                ehVar.e.bindNull(2);
            } else {
                ehVar.e.bindString(2, str2);
            }
        }
    }

    public cm(lg lgVar) {
        this.a = lgVar;
        this.b = new a(this, lgVar);
    }
}
