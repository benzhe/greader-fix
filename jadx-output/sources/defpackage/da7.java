package defpackage;

import java.lang.reflect.Method;
import java.security.PrivilegedExceptionAction;
import javax.net.ssl.SSLEngine;

/* loaded from: classes2.dex */
public class da7 implements PrivilegedExceptionAction<Method> {
    @Override // java.security.PrivilegedExceptionAction
    public Method run() throws Exception {
        return SSLEngine.class.getMethod("getApplicationProtocol", new Class[0]);
    }
}
