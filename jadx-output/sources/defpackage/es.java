package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class es implements zq {
    public final Set<uq> a;
    public final ds b;
    public final hs c;

    public es(Set<uq> set, ds dsVar, hs hsVar) {
        this.a = set;
        this.b = dsVar;
        this.c = hsVar;
    }

    @Override // defpackage.zq
    public <T> yq<T> a(String str, Class<T> cls, xq<T, byte[]> xqVar) {
        return b(str, cls, new uq("proto"), xqVar);
    }

    public <T> yq<T> b(String str, Class<T> cls, uq uqVar, xq<T, byte[]> xqVar) {
        if (this.a.contains(uqVar)) {
            return new gs(this.b, str, uqVar, xqVar, this.c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", uqVar, this.a));
    }
}
