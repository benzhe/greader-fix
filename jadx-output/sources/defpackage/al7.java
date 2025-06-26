package defpackage;

import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public final class al7 {
    public static final zk7 a;

    static {
        int i;
        zk7 zk7Var;
        String property = System.getProperty("java.specification.version");
        if (property != null) {
            int iK = co7.k(property, FilenameUtils.EXTENSION_SEPARATOR, 0, false, 6);
            try {
                if (iK < 0) {
                    i = Integer.parseInt(property) * 65536;
                } else {
                    int i2 = iK + 1;
                    int iK2 = co7.k(property, FilenameUtils.EXTENSION_SEPARATOR, i2, false, 4);
                    if (iK2 < 0) {
                        iK2 = property.length();
                    }
                    String strSubstring = property.substring(0, iK);
                    im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    String strSubstring2 = property.substring(i2, iK2);
                    im7.d(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    i = Integer.parseInt(strSubstring2) + (Integer.parseInt(strSubstring) * 65536);
                }
            } catch (NumberFormatException unused) {
            }
        } else {
            i = 65542;
        }
        if (i >= 65544) {
            try {
                try {
                    Object objNewInstance = Class.forName("cl7").newInstance();
                    im7.d(objNewInstance, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                        zk7Var = (zk7) objNewInstance;
                    } catch (ClassCastException e) {
                        Throwable thInitCause = new ClassCastException("Instance classloader: " + objNewInstance.getClass().getClassLoader() + ", base type classloader: " + zk7.class.getClassLoader()).initCause(e);
                        im7.d(thInitCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw thInitCause;
                    }
                } catch (ClassNotFoundException unused2) {
                }
            } catch (ClassNotFoundException unused3) {
                Object objNewInstance2 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                im7.d(objNewInstance2, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    zk7Var = (zk7) objNewInstance2;
                } catch (ClassCastException e2) {
                    Throwable thInitCause2 = new ClassCastException("Instance classloader: " + objNewInstance2.getClass().getClassLoader() + ", base type classloader: " + zk7.class.getClassLoader()).initCause(e2);
                    im7.d(thInitCause2, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw thInitCause2;
                }
            }
        } else if (i >= 65543) {
            try {
                Object objNewInstance3 = Class.forName("bl7").newInstance();
                im7.d(objNewInstance3, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    try {
                        zk7Var = (zk7) objNewInstance3;
                    } catch (ClassCastException e3) {
                        Throwable thInitCause3 = new ClassCastException("Instance classloader: " + objNewInstance3.getClass().getClassLoader() + ", base type classloader: " + zk7.class.getClassLoader()).initCause(e3);
                        im7.d(thInitCause3, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw thInitCause3;
                    }
                } catch (ClassNotFoundException unused4) {
                }
            } catch (ClassNotFoundException unused5) {
                Object objNewInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                im7.d(objNewInstance4, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    zk7Var = (zk7) objNewInstance4;
                } catch (ClassCastException e4) {
                    Throwable thInitCause4 = new ClassCastException("Instance classloader: " + objNewInstance4.getClass().getClassLoader() + ", base type classloader: " + zk7.class.getClassLoader()).initCause(e4);
                    im7.d(thInitCause4, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw thInitCause4;
                }
            }
        } else {
            zk7Var = new zk7();
        }
        a = zk7Var;
    }
}
