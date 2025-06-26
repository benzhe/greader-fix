package defpackage;

import defpackage.y04;
import java.io.IOException;

/* loaded from: classes.dex */
public class y04<M extends y04<M>> extends c14 {
    public z04 f;

    @Override // defpackage.c14
    public void b(w04 w04Var) throws IOException {
        if (this.f == null) {
            return;
        }
        int i = 0;
        while (true) {
            z04 z04Var = this.f;
            if (i >= z04Var.g) {
                return;
            }
            z04Var.f[i].b();
            i++;
        }
    }

    @Override // defpackage.c14
    public int e() {
        if (this.f != null) {
            int i = 0;
            while (true) {
                z04 z04Var = this.f;
                if (i >= z04Var.g) {
                    break;
                }
                z04Var.f[i].c();
                i++;
            }
        }
        return 0;
    }

    @Override // defpackage.c14
    /* renamed from: f */
    public /* synthetic */ c14 clone() throws CloneNotSupportedException {
        return (y04) clone();
    }

    @Override // defpackage.c14
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public M clone() throws CloneNotSupportedException {
        M m = (M) super.clone();
        Object obj = b14.a;
        z04 z04Var = this.f;
        if (z04Var != null) {
            m.f = (z04) z04Var.clone();
        }
        return m;
    }
}
