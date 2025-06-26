package defpackage;

/* JADX INFO: Add missing generic type declarations: [E] */
/* loaded from: classes.dex */
public final class mg4<E> extends jg4<E> {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ jg4 i;

    public mg4(jg4 jg4Var, int i, int i2) {
        this.i = jg4Var;
        this.g = i;
        this.h = i2;
    }

    @Override // java.util.List
    public final E get(int i) {
        hh4.a(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // defpackage.ig4
    public final Object[] h() {
        return this.i.h();
    }

    @Override // defpackage.ig4
    public final int j() {
        return this.i.j() + this.g;
    }

    @Override // defpackage.ig4
    public final int l() {
        return this.i.j() + this.g + this.h;
    }

    @Override // defpackage.jg4, java.util.List
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final jg4<E> subList(int i, int i2) {
        hh4.c(i, i2, this.h);
        jg4 jg4Var = this.i;
        int i3 = this.g;
        return (jg4) jg4Var.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
