package defpackage;

import java.util.List;

/* loaded from: classes2.dex */
public final class m08 extends jm7 implements el7<yj7> {
    public final /* synthetic */ l08 e;
    public final /* synthetic */ List f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m08(l08 l08Var, List list) {
        super(0);
        this.e = l08Var;
        this.f = list;
    }

    @Override // defpackage.el7
    public yj7 invoke() throws u08 {
        l08 l08Var = this.e;
        k08.b(l08Var.a, this.f, false, 2);
        return yj7.a;
    }
}
