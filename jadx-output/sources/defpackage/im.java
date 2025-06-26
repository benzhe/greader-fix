package defpackage;

/* loaded from: classes.dex */
public final class im implements hm {
    public final lg a;
    public final hg b;

    public class a extends hg<gm> {
        public a(im imVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "INSERT OR IGNORE INTO `WorkTag`(`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // defpackage.hg
        public void d(eh ehVar, gm gmVar) {
            gm gmVar2 = gmVar;
            String str = gmVar2.a;
            if (str == null) {
                ehVar.e.bindNull(1);
            } else {
                ehVar.e.bindString(1, str);
            }
            String str2 = gmVar2.b;
            if (str2 == null) {
                ehVar.e.bindNull(2);
            } else {
                ehVar.e.bindString(2, str2);
            }
        }
    }

    public im(lg lgVar) {
        this.a = lgVar;
        this.b = new a(this, lgVar);
    }
}
