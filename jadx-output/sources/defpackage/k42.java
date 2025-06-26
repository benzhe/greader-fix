package defpackage;

import defpackage.lb1;

/* loaded from: classes.dex */
public final class k42<AdT, AdapterT, ListenerT extends lb1> implements cb3<g42<AdT, AdapterT, ListenerT>> {
    public final mb3<zo2> a;
    public final mb3<zv2> b;
    public final mb3<lz1<AdapterT, ListenerT>> c;
    public final mb3<sz1<AdT, AdapterT, ListenerT>> d;

    public k42(mb3<zo2> mb3Var, mb3<zv2> mb3Var2, mb3<lz1<AdapterT, ListenerT>> mb3Var3, mb3<sz1<AdT, AdapterT, ListenerT>> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new g42(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
