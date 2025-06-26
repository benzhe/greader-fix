package defpackage;

import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public interface d97 {
    public static final d97 a = new a();

    public class a implements d97 {
        @Override // defpackage.d97
        public long a() {
            return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
        }
    }

    long a();
}
