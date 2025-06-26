package defpackage;

import com.google.android.gms.measurement.internal.zzaq;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ms4 implements Iterator<String> {
    public final Iterator<String> e;
    public final /* synthetic */ zzaq f;

    public ms4(zzaq zzaqVar) {
        this.f = zzaqVar;
        this.e = zzaqVar.e.keySet().iterator();
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String next() {
        return this.e.next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.e.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
