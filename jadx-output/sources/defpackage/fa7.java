package defpackage;

import java.lang.reflect.Method;
import java.security.PrivilegedExceptionAction;
import javax.net.ssl.SSLSocket;

/* loaded from: classes2.dex */
public class fa7 implements PrivilegedExceptionAction<Method> {
    @Override // java.security.PrivilegedExceptionAction
    public Method run() throws Exception {
        return SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]);
    }
}
