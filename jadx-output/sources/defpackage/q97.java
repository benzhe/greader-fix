package defpackage;

import java.util.EnumMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class q97 {
    public final Logger a;
    public final Level b;

    public enum a {
        INBOUND,
        OUTBOUND
    }

    public enum b {
        HEADER_TABLE_SIZE(1),
        ENABLE_PUSH(2),
        MAX_CONCURRENT_STREAMS(4),
        MAX_FRAME_SIZE(5),
        MAX_HEADER_LIST_SIZE(6),
        INITIAL_WINDOW_SIZE(7);

        public final int e;

        b(int i) {
            this.e = i;
        }
    }

    public q97(Level level, Class<?> cls) {
        Logger logger = Logger.getLogger(cls.getName());
        c50.A(level, "level");
        this.b = level;
        c50.A(logger, "logger");
        this.a = logger;
    }

    public static String h(xs7 xs7Var) {
        long j = xs7Var.f;
        if (j <= 64) {
            return xs7Var.y().w();
        }
        return xs7Var.D((int) Math.min(j, 64L)).w() + "...";
    }

    public final boolean a() {
        return this.a.isLoggable(this.b);
    }

    public void b(a aVar, int i, xs7 xs7Var, int i2, boolean z) {
        if (a()) {
            this.a.log(this.b, aVar + " DATA: streamId=" + i + " endStream=" + z + " length=" + i2 + " bytes=" + h(xs7Var));
        }
    }

    public void c(a aVar, int i, ka7 ka7Var, bt7 bt7Var) {
        if (a()) {
            Logger logger = this.a;
            Level level = this.b;
            StringBuilder sb = new StringBuilder();
            sb.append(aVar);
            sb.append(" GO_AWAY: lastStreamId=");
            sb.append(i);
            sb.append(" errorCode=");
            sb.append(ka7Var);
            sb.append(" length=");
            sb.append(bt7Var.t());
            sb.append(" bytes=");
            xs7 xs7Var = new xs7();
            xs7Var.F(bt7Var);
            sb.append(h(xs7Var));
            logger.log(level, sb.toString());
        }
    }

    public void d(a aVar, long j) {
        if (a()) {
            this.a.log(this.b, aVar + " PING: ack=false bytes=" + j);
        }
    }

    public void e(a aVar, int i, ka7 ka7Var) {
        if (a()) {
            this.a.log(this.b, aVar + " RST_STREAM: streamId=" + i + " errorCode=" + ka7Var);
        }
    }

    public void f(a aVar, ra7 ra7Var) {
        if (a()) {
            Logger logger = this.a;
            Level level = this.b;
            StringBuilder sb = new StringBuilder();
            sb.append(aVar);
            sb.append(" SETTINGS: ack=false settings=");
            EnumMap enumMap = new EnumMap(b.class);
            b[] bVarArrValues = b.values();
            for (int i = 0; i < 6; i++) {
                b bVar = bVarArrValues[i];
                if (ra7Var.a(bVar.e)) {
                    enumMap.put((EnumMap) bVar, (b) Integer.valueOf(ra7Var.d[bVar.e]));
                }
            }
            sb.append(enumMap.toString());
            logger.log(level, sb.toString());
        }
    }

    public void g(a aVar, int i, long j) {
        if (a()) {
            this.a.log(this.b, aVar + " WINDOW_UPDATE: streamId=" + i + " windowSizeIncrement=" + j);
        }
    }
}
