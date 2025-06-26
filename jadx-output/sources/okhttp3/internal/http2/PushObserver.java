package okhttp3.internal.http2;

import defpackage.at7;
import defpackage.gm7;
import defpackage.im7;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public interface PushObserver {
    public static final Companion Companion = new Companion(null);
    public static final PushObserver CANCEL = new Companion.PushObserverCancel();

    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = null;

        public static final class PushObserverCancel implements PushObserver {
            @Override // okhttp3.internal.http2.PushObserver
            public boolean onData(int i, at7 at7Var, int i2, boolean z) throws IOException {
                im7.e(at7Var, "source");
                at7Var.skip(i2);
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onHeaders(int i, List<Header> list, boolean z) {
                im7.e(list, "responseHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onRequest(int i, List<Header> list) {
                im7.e(list, "requestHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public void onReset(int i, ErrorCode errorCode) {
                im7.e(errorCode, "errorCode");
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    boolean onData(int i, at7 at7Var, int i2, boolean z) throws IOException;

    boolean onHeaders(int i, List<Header> list, boolean z);

    boolean onRequest(int i, List<Header> list);

    void onReset(int i, ErrorCode errorCode);
}
