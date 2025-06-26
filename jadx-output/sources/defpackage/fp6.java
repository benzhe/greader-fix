package defpackage;

import android.database.Cursor;
import defpackage.rn6;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class fp6 implements rn6.b {
    public final /* synthetic */ int a;
    public final /* synthetic */ long b;
    public final /* synthetic */ cw6 c;
    public final /* synthetic */ ep6 d;

    public fp6(ep6 ep6Var, int i, long j, cw6 cw6Var) {
        this.d = ep6Var;
        this.a = i;
        this.b = j;
        this.c = cw6Var;
    }

    @Override // rn6.b
    public void a(List<ap6> list) throws Throwable {
        this.d.L(list, this.b, this.c, this.d.n() == 7 ? 2 : 0);
    }

    @Override // rn6.b
    public long b() {
        return (iw6.z(this.d.a) / 1000) - 60;
    }

    @Override // rn6.b
    public int c() {
        return this.a;
    }

    @Override // rn6.b
    public boolean d() {
        return true;
    }

    @Override // rn6.b
    public boolean e() {
        return true;
    }

    @Override // rn6.b
    public boolean f() {
        return true;
    }

    @Override // rn6.b
    public Set<String> g() {
        Cursor cursorK = new vd(this.d.a, ip6.A, new String[]{"subscription.uid"}, "subscription.sync_excluded = 1 OR tag.sync_excluded = 1", null, null).k();
        if (cursorK == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        while (cursorK.moveToNext()) {
            try {
                hashSet.add(cursorK.getString(0));
            } catch (Exception unused) {
                return null;
            } finally {
                cursorK.close();
            }
        }
        return hashSet;
    }

    @Override // rn6.b
    public String stream() {
        return null;
    }
}
