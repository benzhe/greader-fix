package okhttp3.internal.platform.android;

import android.util.Log;
import defpackage.co7;
import defpackage.ek7;
import defpackage.ik7;
import defpackage.im7;
import defpackage.jo;
import defpackage.n56;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.OkHttpClient;
import okhttp3.internal.SuppressSignatureCheck;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2;

@SuppressSignatureCheck
/* loaded from: classes2.dex */
public final class AndroidLog {
    private static final int MAX_LOG_LENGTH = 4000;
    private static final Map<String, String> knownLoggers;
    public static final AndroidLog INSTANCE = new AndroidLog();
    private static final CopyOnWriteArraySet<Logger> configuredLoggers = new CopyOnWriteArraySet<>();

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r1 = OkHttpClient.class.getPackage();
        String name = r1 != null ? r1.getName() : null;
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        String name2 = OkHttpClient.class.getName();
        im7.d(name2, "OkHttpClient::class.java.name");
        linkedHashMap.put(name2, "okhttp.OkHttpClient");
        String name3 = Http2.class.getName();
        im7.d(name3, "Http2::class.java.name");
        linkedHashMap.put(name3, "okhttp.Http2");
        String name4 = TaskRunner.class.getName();
        im7.d(name4, "TaskRunner::class.java.name");
        linkedHashMap.put(name4, "okhttp.TaskRunner");
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        im7.e(linkedHashMap, "$this$toMap");
        int size = linkedHashMap.size();
        knownLoggers = size != 0 ? size != 1 ? ek7.x(linkedHashMap) : n56.w2(linkedHashMap) : ik7.e;
    }

    private AndroidLog() {
    }

    private final void enableLogging(String str, String str2) throws SecurityException {
        Logger logger = Logger.getLogger(str);
        if (configuredLoggers.add(logger)) {
            im7.d(logger, "logger");
            logger.setUseParentHandlers(false);
            logger.setLevel(Log.isLoggable(str2, 3) ? Level.FINE : Log.isLoggable(str2, 4) ? Level.INFO : Level.WARNING);
            logger.addHandler(AndroidLogHandler.INSTANCE);
        }
    }

    private final String loggerTag(String str) {
        String str2 = knownLoggers.get(str);
        if (str2 != null) {
            return str2;
        }
        im7.e(str, "$this$take");
        int length = str.length();
        String strSubstring = str.substring(0, 23 > length ? length : 23);
        im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final void androidLog$okhttp(String str, int i, String str2, Throwable th) {
        int iMin;
        im7.e(str, "loggerName");
        im7.e(str2, "message");
        String strLoggerTag = loggerTag(str);
        if (Log.isLoggable(strLoggerTag, i)) {
            if (th != null) {
                StringBuilder sbB = jo.B(str2, "\n");
                sbB.append(Log.getStackTraceString(th));
                str2 = sbB.toString();
            }
            int length = str2.length();
            int i2 = 0;
            while (i2 < length) {
                int iK = co7.k(str2, '\n', i2, false, 4);
                if (iK == -1) {
                    iK = length;
                }
                while (true) {
                    iMin = Math.min(iK, i2 + MAX_LOG_LENGTH);
                    String strSubstring = str2.substring(i2, iMin);
                    im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    Log.println(i, strLoggerTag, strSubstring);
                    if (iMin >= iK) {
                        break;
                    } else {
                        i2 = iMin;
                    }
                }
                i2 = iMin + 1;
            }
        }
    }

    public final void enable() {
        for (Map.Entry<String, String> entry : knownLoggers.entrySet()) {
            enableLogging(entry.getKey(), entry.getValue());
        }
    }
}
