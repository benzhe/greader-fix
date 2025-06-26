package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.w37;
import defpackage.z27;
import java.text.MessageFormat;
import java.util.Collection;
import java.util.logging.Level;

/* loaded from: classes2.dex */
public final class r57 extends z27 {
    public final s57 a;
    public final d97 b;

    public r57(s57 s57Var, d97 d97Var) {
        c50.A(s57Var, "tracer");
        this.a = s57Var;
        c50.A(d97Var, "time");
        this.b = d97Var;
    }

    public static Level d(z27.a aVar) {
        int iOrdinal = aVar.ordinal();
        return iOrdinal != 2 ? iOrdinal != 3 ? Level.FINEST : Level.FINE : Level.FINER;
    }

    @Override // defpackage.z27
    public void a(z27.a aVar, String str) {
        y37 y37Var = this.a.b;
        Level levelD = d(aVar);
        if (s57.e.isLoggable(levelD)) {
            s57.a(y37Var, levelD, str);
        }
        if (!c(aVar) || aVar == z27.a.DEBUG) {
            return;
        }
        s57 s57Var = this.a;
        int iOrdinal = aVar.ordinal();
        w37.a aVar2 = iOrdinal != 2 ? iOrdinal != 3 ? w37.a.CT_INFO : w37.a.CT_ERROR : w37.a.CT_WARNING;
        Long lValueOf = Long.valueOf(this.b.a());
        c50.A(str, NSRSS20.DESCR);
        c50.A(aVar2, "severity");
        c50.A(lValueOf, "timestampNanos");
        c50.G(true, "at least one of channelRef and subchannelRef must be null");
        w37 w37Var = new w37(str, aVar2, lValueOf.longValue(), null, null, null);
        synchronized (s57Var.a) {
            Collection<w37> collection = s57Var.c;
            if (collection != null) {
                collection.add(w37Var);
            }
        }
    }

    @Override // defpackage.z27
    public void b(z27.a aVar, String str, Object... objArr) {
        a(aVar, (c(aVar) || s57.e.isLoggable(d(aVar))) ? MessageFormat.format(str, objArr) : null);
    }

    public final boolean c(z27.a aVar) {
        boolean z;
        if (aVar != z27.a.DEBUG) {
            s57 s57Var = this.a;
            synchronized (s57Var.a) {
                z = s57Var.c != null;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }
}
