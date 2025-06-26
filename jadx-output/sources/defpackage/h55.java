package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes.dex */
public final class h55 implements w35<Void, e45<List<e45<?>>>> {
    public final /* synthetic */ Collection a;

    public h55(Collection collection) {
        this.a = collection;
    }

    @Override // defpackage.w35
    public final /* synthetic */ e45<List<e45<?>>> a(e45<Void> e45Var) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.a);
        return c50.X(arrayList);
    }
}
