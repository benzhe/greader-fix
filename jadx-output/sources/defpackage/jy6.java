package defpackage;

import android.util.Log;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.lookup.PropertiesStringLookup;

/* loaded from: classes2.dex */
public class jy6 {
    public static void a(String str) {
        Log.e("DEBUG", c(4) + String.valueOf(str));
    }

    public static void b(String str, Throwable th) {
        Log.e("DEBUG", c(4) + str, th);
    }

    public static String c(int i) {
        if (i < 1) {
            return "";
        }
        Thread threadCurrentThread = Thread.currentThread();
        StackTraceElement stackTraceElement = threadCurrentThread.getStackTrace()[4];
        String fileName = stackTraceElement.getFileName();
        StringBuilder sbZ = jo.z("[");
        sbZ.append(threadCurrentThread.getName());
        sbZ.append("] ");
        int iIndexOf = fileName.indexOf(36);
        if (iIndexOf != -1) {
            fileName = fileName.substring(0, iIndexOf);
        }
        sbZ.append("(");
        sbZ.append(fileName);
        sbZ.append(":");
        sbZ.append(stackTraceElement.getLineNumber());
        sbZ.append(")");
        sbZ.append(PropertiesStringLookup.SEPARATOR);
        sbZ.append(stackTraceElement.getMethodName());
        sbZ.append(StringUtils.SPACE);
        return sbZ.toString();
    }
}
