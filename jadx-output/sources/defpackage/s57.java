package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.w37;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class s57 {
    public static final Logger e = Logger.getLogger(z27.class.getName());
    public final Object a = new Object();
    public final y37 b;
    public final Collection<w37> c;
    public int d;

    public class a extends ArrayDeque<w37> {
        public final /* synthetic */ int e;

        public a(int i) {
            this.e = i;
        }

        @Override // java.util.ArrayDeque, java.util.AbstractCollection, java.util.Collection, java.util.Deque, java.util.Queue
        public boolean add(Object obj) {
            w37 w37Var = (w37) obj;
            if (size() == this.e) {
                removeFirst();
            }
            s57.this.d++;
            return super.add(w37Var);
        }
    }

    public s57(y37 y37Var, int i, long j, String str) {
        c50.A(str, NSRSS20.DESCR);
        c50.A(y37Var, "logId");
        this.b = y37Var;
        if (i > 0) {
            this.c = new a(i);
        } else {
            this.c = null;
        }
        String strN = jo.n(str, " created");
        w37.a aVar = w37.a.CT_INFO;
        Long lValueOf = Long.valueOf(j);
        c50.A(strN, NSRSS20.DESCR);
        c50.A(aVar, "severity");
        c50.A(lValueOf, "timestampNanos");
        c50.G(true, "at least one of channelRef and subchannelRef must be null");
        b(new w37(strN, aVar, lValueOf.longValue(), null, null, null));
    }

    public static void a(y37 y37Var, Level level, String str) {
        Logger logger = e;
        if (logger.isLoggable(level)) {
            LogRecord logRecord = new LogRecord(level, "[" + y37Var + "] " + str);
            logRecord.setLoggerName(logger.getName());
            logRecord.setSourceClassName(logger.getName());
            logRecord.setSourceMethodName("log");
            logger.log(logRecord);
        }
    }

    public void b(w37 w37Var) {
        int iOrdinal = w37Var.b.ordinal();
        Level level = iOrdinal != 2 ? iOrdinal != 3 ? Level.FINEST : Level.FINE : Level.FINER;
        synchronized (this.a) {
            Collection<w37> collection = this.c;
            if (collection != null) {
                collection.add(w37Var);
            }
        }
        a(this.b, level, w37Var.a);
    }
}
