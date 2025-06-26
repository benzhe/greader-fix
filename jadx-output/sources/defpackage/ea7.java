package defpackage;

import java.lang.reflect.Method;
import java.security.PrivilegedExceptionAction;
import javax.net.ssl.SSLParameters;

/* loaded from: classes2.dex */
public class ea7 implements PrivilegedExceptionAction<Method> {
    @Override // java.security.PrivilegedExceptionAction
    public Method run() throws Exception {
        return SSLParameters.class.getMethod("setApplicationProtocols", String[].class);
    }
}
