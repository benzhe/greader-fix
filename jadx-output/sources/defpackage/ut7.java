package defpackage;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class ut7 extends vs7 {
    public final Socket a;

    public ut7(Socket socket) {
        im7.e(socket, "socket");
        this.a = socket;
    }

    @Override // defpackage.vs7
    public IOException newTimeoutException(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // defpackage.vs7
    public void timedOut() throws IOException {
        try {
            this.a.close();
        } catch (AssertionError e) {
            if (!n56.i1(e)) {
                throw e;
            }
            Logger logger = jt7.a;
            Level level = Level.WARNING;
            StringBuilder sbZ = jo.z("Failed to close timed out socket ");
            sbZ.append(this.a);
            logger.log(level, sbZ.toString(), (Throwable) e);
        } catch (Exception e2) {
            Logger logger2 = jt7.a;
            Level level2 = Level.WARNING;
            StringBuilder sbZ2 = jo.z("Failed to close timed out socket ");
            sbZ2.append(this.a);
            logger2.log(level2, sbZ2.toString(), (Throwable) e2);
        }
    }
}
