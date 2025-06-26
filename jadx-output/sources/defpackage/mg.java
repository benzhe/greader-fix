package defpackage;

import defpackage.xg;

/* loaded from: classes.dex */
public class mg extends xg.a {
    public gg b;
    public final a c;

    public static abstract class a {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        public abstract void a(wg wgVar);
    }

    public mg(gg ggVar, a aVar, String str, String str2) {
        super(aVar.a);
        this.b = ggVar;
        this.c = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0077, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0073 A[EDGE_INSN: B:115:0x0073->B:41:0x0073 BREAK  A[LOOP:3: B:15:0x002b->B:42:0x0075], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0467  */
    @Override // xg.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(defpackage.wg r27, int r28, int r29) {
        /*
            Method dump skipped, instructions count: 1241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mg.b(wg, int, int):void");
    }

    public final void c(wg wgVar) {
        ah ahVar = (ah) wgVar;
        ahVar.e.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        ahVar.e.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c84d23ade98552f1cec71088c1f0794c')");
    }
}
