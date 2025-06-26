package okhttp3.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import defpackage.at7;
import defpackage.bt7;
import defpackage.co7;
import defpackage.dn7;
import defpackage.ek7;
import defpackage.el7;
import defpackage.en7;
import defpackage.hk7;
import defpackage.ik7;
import defpackage.im7;
import defpackage.jo;
import defpackage.kk7;
import defpackage.lt7;
import defpackage.n56;
import defpackage.pl7;
import defpackage.tt7;
import defpackage.vm7;
import defpackage.vt7;
import defpackage.wn7;
import defpackage.xs7;
import defpackage.yj7;
import defpackage.yn7;
import defpackage.zs7;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http2.Header;
import okhttp3.internal.io.FileSystem;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.time.TimeZones;
import org.apache.commons.text.lookup.AbstractStringLookup;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final Headers EMPTY_HEADERS = Headers.Companion.of(new String[0]);
    public static final RequestBody EMPTY_REQUEST;
    public static final ResponseBody EMPTY_RESPONSE;
    private static final lt7 UNICODE_BOMS;
    public static final TimeZone UTC;
    private static final yn7 VERIFY_AS_IP_ADDRESS;
    public static final boolean assertionsEnabled;
    public static final String okHttpName;
    public static final String userAgent = "okhttp/4.9.0";

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_RESPONSE = ResponseBody.Companion.create$default(ResponseBody.Companion, bArr, (MediaType) null, 1, (Object) null);
        EMPTY_REQUEST = RequestBody.Companion.create$default(RequestBody.Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        lt7.a aVar = lt7.g;
        bt7.a aVar2 = bt7.i;
        UNICODE_BOMS = aVar.c(aVar2.b("efbbbf"), aVar2.b("feff"), aVar2.b("fffe"), aVar2.b("0000ffff"), aVar2.b("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone(TimeZones.GMT_ID);
        im7.c(timeZone);
        UTC = timeZone;
        VERIFY_AS_IP_ADDRESS = new yn7("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        assertionsEnabled = false;
        String name = OkHttpClient.class.getName();
        im7.d(name, "OkHttpClient::class.java.name");
        String strT = co7.t(name, "okhttp3.");
        im7.e(strT, "$this$removeSuffix");
        im7.e("Client", "suffix");
        if (co7.c(strT, "Client", false, 2)) {
            strT = strT.substring(0, strT.length() - "Client".length());
            im7.d(strT, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        okHttpName = strT;
    }

    public static final <E> void addIfAbsent(List<E> list, E e) {
        im7.e(list, "$this$addIfAbsent");
        if (list.contains(e)) {
            return;
        }
        list.add(e);
    }

    public static final int and(byte b, int i) {
        return b & i;
    }

    public static final int and(short s, int i) {
        return s & i;
    }

    public static final long and(int i, long j) {
        return i & j;
    }

    public static final EventListener.Factory asFactory(final EventListener eventListener) {
        im7.e(eventListener, "$this$asFactory");
        return new EventListener.Factory() { // from class: okhttp3.internal.Util.asFactory.1
            @Override // okhttp3.EventListener.Factory
            public final EventListener create(Call call) {
                im7.e(call, "it");
                return eventListener;
            }
        };
    }

    public static final void assertThreadDoesntHoldLock(Object obj) {
        im7.e(obj, "$this$assertThreadDoesntHoldLock");
        if (assertionsEnabled && Thread.holdsLock(obj)) {
            StringBuilder sbZ = jo.z("Thread ");
            Thread threadCurrentThread = Thread.currentThread();
            im7.d(threadCurrentThread, "Thread.currentThread()");
            sbZ.append(threadCurrentThread.getName());
            sbZ.append(" MUST NOT hold lock on ");
            sbZ.append(obj);
            throw new AssertionError(sbZ.toString());
        }
    }

    public static final void assertThreadHoldsLock(Object obj) {
        im7.e(obj, "$this$assertThreadHoldsLock");
        if (!assertionsEnabled || Thread.holdsLock(obj)) {
            return;
        }
        StringBuilder sbZ = jo.z("Thread ");
        Thread threadCurrentThread = Thread.currentThread();
        im7.d(threadCurrentThread, "Thread.currentThread()");
        sbZ.append(threadCurrentThread.getName());
        sbZ.append(" MUST hold lock on ");
        sbZ.append(obj);
        throw new AssertionError(sbZ.toString());
    }

    public static final boolean canParseAsIpAddress(String str) {
        im7.e(str, "$this$canParseAsIpAddress");
        return VERIFY_AS_IP_ADDRESS.a(str);
    }

    public static final boolean canReuseConnectionFor(HttpUrl httpUrl, HttpUrl httpUrl2) {
        im7.e(httpUrl, "$this$canReuseConnectionFor");
        im7.e(httpUrl2, "other");
        return im7.a(httpUrl.host(), httpUrl2.host()) && httpUrl.port() == httpUrl2.port() && im7.a(httpUrl.scheme(), httpUrl2.scheme());
    }

    public static final int checkDuration(String str, long j, TimeUnit timeUnit) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        boolean z = true;
        if (!(j >= 0)) {
            throw new IllegalStateException(jo.n(str, " < 0").toString());
        }
        if (!(timeUnit != null)) {
            throw new IllegalStateException("unit == null".toString());
        }
        long millis = timeUnit.toMillis(j);
        if (!(millis <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException(jo.n(str, " too large.").toString());
        }
        if (millis == 0 && j > 0) {
            z = false;
        }
        if (z) {
            return (int) millis;
        }
        throw new IllegalArgumentException(jo.n(str, " too small.").toString());
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void closeQuietly(Closeable closeable) throws IOException {
        im7.e(closeable, "$this$closeQuietly");
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final String[] concat(String[] strArr, String str) {
        im7.e(strArr, "$this$concat");
        im7.e(str, "value");
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length + 1);
        im7.d(objArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
        String[] strArr2 = (String[]) objArrCopyOf;
        im7.e(strArr2, "$this$lastIndex");
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    public static final int delimiterOffset(String str, String str2, int i, int i2) {
        im7.e(str, "$this$delimiterOffset");
        im7.e(str2, "delimiters");
        while (i < i2) {
            if (co7.a(str2, str.charAt(i), false, 2)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, String str2, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return delimiterOffset(str, str2, i, i2);
    }

    public static final boolean discard(vt7 vt7Var, int i, TimeUnit timeUnit) {
        im7.e(vt7Var, "$this$discard");
        im7.e(timeUnit, "timeUnit");
        try {
            return skipAll(vt7Var, i, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static final <T> List<T> filterList(Iterable<? extends T> iterable, pl7<? super T, Boolean> pl7Var) {
        im7.e(iterable, "$this$filterList");
        im7.e(pl7Var, "predicate");
        ArrayList arrayList = hk7.e;
        for (T t : iterable) {
            if (pl7Var.invoke(t).booleanValue()) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                vm7.a(arrayList).add(t);
            }
        }
        return arrayList;
    }

    public static final String format(String str, Object... objArr) {
        im7.e(str, "format");
        im7.e(objArr, "args");
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        String str2 = String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        im7.d(str2, "java.lang.String.format(locale, format, *args)");
        return str2;
    }

    public static final boolean hasIntersection(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        im7.e(strArr, "$this$hasIntersection");
        im7.e(comparator, "comparator");
        if (!(strArr.length == 0) && strArr2 != null) {
            if (!(strArr2.length == 0)) {
                for (String str : strArr) {
                    for (String str2 : strArr2) {
                        if (comparator.compare(str, str2) == 0) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final long headersContentLength(Response response) {
        im7.e(response, "$this$headersContentLength");
        String str = response.headers().get("Content-Length");
        if (str != null) {
            return toLongOrDefault(str, -1L);
        }
        return -1L;
    }

    public static final void ignoreIoExceptions(el7<yj7> el7Var) {
        im7.e(el7Var, "block");
        try {
            el7Var.invoke();
        } catch (IOException unused) {
        }
    }

    @SafeVarargs
    public static final <T> List<T> immutableListOf(T... tArr) {
        im7.e(tArr, "elements");
        Object[] objArr = (Object[]) tArr.clone();
        List<T> listUnmodifiableList = Collections.unmodifiableList(ek7.l(Arrays.copyOf(objArr, objArr.length)));
        im7.d(listUnmodifiableList, "Collections.unmodifiable…istOf(*elements.clone()))");
        return listUnmodifiableList;
    }

    public static final int indexOf(String[] strArr, String str, Comparator<String> comparator) {
        im7.e(strArr, "$this$indexOf");
        im7.e(str, "value");
        im7.e(comparator, "comparator");
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfControlOrNonAscii(String str) {
        im7.e(str, "$this$indexOfControlOrNonAscii");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (im7.g(cCharAt, 31) <= 0 || im7.g(cCharAt, 127) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(String str, int i, int i2) {
        im7.e(str, "$this$indexOfFirstNonAsciiWhitespace");
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int indexOfFirstNonAsciiWhitespace$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return indexOfFirstNonAsciiWhitespace(str, i, i2);
    }

    public static final int indexOfLastNonAsciiWhitespace(String str, int i, int i2) {
        im7.e(str, "$this$indexOfLastNonAsciiWhitespace");
        int i3 = i2 - 1;
        if (i3 >= i) {
            while (true) {
                char cCharAt = str.charAt(i3);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i3 + 1;
                }
                if (i3 == i) {
                    break;
                }
                i3--;
            }
        }
        return i;
    }

    public static /* synthetic */ int indexOfLastNonAsciiWhitespace$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return indexOfLastNonAsciiWhitespace(str, i, i2);
    }

    public static final int indexOfNonWhitespace(String str, int i) {
        im7.e(str, "$this$indexOfNonWhitespace");
        int length = str.length();
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\t') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    public static /* synthetic */ int indexOfNonWhitespace$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return indexOfNonWhitespace(str, i);
    }

    public static final String[] intersect(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        im7.e(strArr, "$this$intersect");
        im7.e(strArr2, "other");
        im7.e(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (String[]) array;
    }

    public static final boolean isCivilized(FileSystem fileSystem, File file) throws IOException {
        im7.e(fileSystem, "$this$isCivilized");
        im7.e(file, StringLookupFactory.KEY_FILE);
        tt7 tt7VarSink = fileSystem.sink(file);
        try {
            fileSystem.delete(file);
            n56.w(tt7VarSink, null);
            return true;
        } catch (IOException unused) {
            n56.w(tt7VarSink, null);
            fileSystem.delete(file);
            return false;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                n56.w(tt7VarSink, th);
                throw th2;
            }
        }
    }

    public static final boolean isHealthy(Socket socket, at7 at7Var) throws SocketException {
        im7.e(socket, "$this$isHealthy");
        im7.e(at7Var, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                boolean z = !at7Var.J();
                socket.setSoTimeout(soTimeout);
                return z;
            } catch (Throwable th) {
                socket.setSoTimeout(soTimeout);
                throw th;
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final void notify(Object obj) {
        im7.e(obj, "$this$notify");
        obj.notify();
    }

    public static final void notifyAll(Object obj) {
        im7.e(obj, "$this$notifyAll");
        obj.notifyAll();
    }

    public static final int parseHexDigit(char c) {
        if ('0' <= c && '9' >= c) {
            return c - '0';
        }
        char c2 = 'a';
        if ('a' > c || 'f' < c) {
            c2 = 'A';
            if ('A' > c || 'F' < c) {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    public static final String peerName(Socket socket) {
        im7.e(socket, "$this$peerName");
        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
        if (!(remoteSocketAddress instanceof InetSocketAddress)) {
            return remoteSocketAddress.toString();
        }
        String hostName = ((InetSocketAddress) remoteSocketAddress).getHostName();
        im7.d(hostName, "address.hostName");
        return hostName;
    }

    public static final Charset readBomAsCharset(at7 at7Var, Charset charset) throws IOException {
        Charset charsetForName;
        im7.e(at7Var, "$this$readBomAsCharset");
        im7.e(charset, "default");
        int iJ0 = at7Var.J0(UNICODE_BOMS);
        if (iJ0 == -1) {
            return charset;
        }
        if (iJ0 == 0) {
            Charset charset2 = StandardCharsets.UTF_8;
            im7.d(charset2, "UTF_8");
            return charset2;
        }
        if (iJ0 == 1) {
            Charset charset3 = StandardCharsets.UTF_16BE;
            im7.d(charset3, "UTF_16BE");
            return charset3;
        }
        if (iJ0 == 2) {
            Charset charset4 = StandardCharsets.UTF_16LE;
            im7.d(charset4, "UTF_16LE");
            return charset4;
        }
        if (iJ0 == 3) {
            wn7 wn7Var = wn7.d;
            charsetForName = wn7.c;
            if (charsetForName == null) {
                charsetForName = Charset.forName("UTF-32BE");
                im7.d(charsetForName, "Charset.forName(\"UTF-32BE\")");
                wn7.c = charsetForName;
            }
        } else {
            if (iJ0 != 4) {
                throw new AssertionError();
            }
            wn7 wn7Var2 = wn7.d;
            charsetForName = wn7.b;
            if (charsetForName == null) {
                charsetForName = Charset.forName("UTF-32LE");
                im7.d(charsetForName, "Charset.forName(\"UTF-32LE\")");
                wn7.b = charsetForName;
            }
        }
        return charsetForName;
    }

    public static final <T> T readFieldOrNull(Object obj, Class<T> cls, String str) {
        T tCast;
        Object fieldOrNull;
        im7.e(obj, "instance");
        im7.e(cls, "fieldType");
        im7.e(str, "fieldName");
        Class<?> superclass = obj.getClass();
        while (true) {
            tCast = null;
            if (!(!im7.a(superclass, Object.class))) {
                if (!(!im7.a(str, "delegate")) || (fieldOrNull = readFieldOrNull(obj, Object.class, "delegate")) == null) {
                    return null;
                }
                return (T) readFieldOrNull(fieldOrNull, cls, str);
            }
            try {
                Field declaredField = superclass.getDeclaredField(str);
                im7.d(declaredField, "field");
                declaredField.setAccessible(true);
                Object obj2 = declaredField.get(obj);
                if (!cls.isInstance(obj2)) {
                    break;
                }
                tCast = cls.cast(obj2);
                break;
            } catch (NoSuchFieldException unused) {
                superclass = superclass.getSuperclass();
                im7.d(superclass, "c.superclass");
            }
        }
        return tCast;
    }

    public static final int readMedium(at7 at7Var) throws IOException {
        im7.e(at7Var, "$this$readMedium");
        return and(at7Var.readByte(), Base64.BASELENGTH) | (and(at7Var.readByte(), Base64.BASELENGTH) << 16) | (and(at7Var.readByte(), Base64.BASELENGTH) << 8);
    }

    public static final boolean skipAll(vt7 vt7Var, int i, TimeUnit timeUnit) throws IOException {
        boolean z;
        im7.e(vt7Var, "$this$skipAll");
        im7.e(timeUnit, "timeUnit");
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = vt7Var.timeout().hasDeadline() ? vt7Var.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        vt7Var.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i)) + jNanoTime);
        try {
            xs7 xs7Var = new xs7();
            while (vt7Var.read(xs7Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                xs7Var.skip(xs7Var.f);
            }
            z = true;
        } catch (InterruptedIOException unused) {
            z = false;
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
            }
        } catch (Throwable th) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                vt7Var.timeout().clearDeadline();
            } else {
                vt7Var.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th;
        }
        if (jDeadlineNanoTime == Long.MAX_VALUE) {
            vt7Var.timeout().clearDeadline();
        } else {
            vt7Var.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
        }
        return z;
    }

    public static final ThreadFactory threadFactory(final String str, final boolean z) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        return new ThreadFactory() { // from class: okhttp3.internal.Util.threadFactory.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, str);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    public static final void threadName(String str, el7<yj7> el7Var) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        im7.e(el7Var, "block");
        Thread threadCurrentThread = Thread.currentThread();
        im7.d(threadCurrentThread, "currentThread");
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(str);
        try {
            el7Var.invoke();
        } finally {
            threadCurrentThread.setName(name);
        }
    }

    public static final List<Header> toHeaderList(Headers headers) {
        im7.e(headers, "$this$toHeaderList");
        dn7 dn7VarD = en7.d(0, headers.size());
        ArrayList arrayList = new ArrayList(n56.x(dn7VarD, 10));
        Iterator<Integer> it = dn7VarD.iterator();
        while (it.hasNext()) {
            int iA = ((kk7) it).a();
            arrayList.add(new Header(headers.name(iA), headers.value(iA)));
        }
        return arrayList;
    }

    public static final Headers toHeaders(List<Header> list) {
        im7.e(list, "$this$toHeaders");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : list) {
            builder.addLenient$okhttp(header.component1().O(), header.component2().O());
        }
        return builder.build();
    }

    public static final String toHexString(long j) {
        String hexString = Long.toHexString(j);
        im7.d(hexString, "java.lang.Long.toHexString(this)");
        return hexString;
    }

    public static final String toHostHeader(HttpUrl httpUrl, boolean z) {
        String strHost;
        im7.e(httpUrl, "$this$toHostHeader");
        if (co7.b(httpUrl.host(), ":", false, 2)) {
            strHost = '[' + httpUrl.host() + ']';
        } else {
            strHost = httpUrl.host();
        }
        if (!z && httpUrl.port() == HttpUrl.Companion.defaultPort(httpUrl.scheme())) {
            return strHost;
        }
        return strHost + AbstractStringLookup.SPLIT_CH + httpUrl.port();
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return toHostHeader(httpUrl, z);
    }

    public static final <T> List<T> toImmutableList(List<? extends T> list) {
        im7.e(list, "$this$toImmutableList");
        List<T> listUnmodifiableList = Collections.unmodifiableList(ek7.w(list));
        im7.d(listUnmodifiableList, "Collections.unmodifiableList(toMutableList())");
        return listUnmodifiableList;
    }

    public static final <K, V> Map<K, V> toImmutableMap(Map<K, ? extends V> map) {
        im7.e(map, "$this$toImmutableMap");
        if (map.isEmpty()) {
            return ik7.e;
        }
        Map<K, V> mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
        im7.d(mapUnmodifiableMap, "Collections.unmodifiableMap(LinkedHashMap(this))");
        return mapUnmodifiableMap;
    }

    public static final long toLongOrDefault(String str, long j) {
        im7.e(str, "$this$toLongOrDefault");
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public static final int toNonNegativeInt(String str, int i) throws NumberFormatException {
        if (str != null) {
            try {
                long j = Long.parseLong(str);
                if (j > Integer.MAX_VALUE) {
                    return Integer.MAX_VALUE;
                }
                if (j < 0) {
                    return 0;
                }
                return (int) j;
            } catch (NumberFormatException unused) {
            }
        }
        return i;
    }

    public static final String trimSubstring(String str, int i, int i2) {
        im7.e(str, "$this$trimSubstring");
        int iIndexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(str, i, i2);
        String strSubstring = str.substring(iIndexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(str, iIndexOfFirstNonAsciiWhitespace, i2));
        im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String trimSubstring$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return trimSubstring(str, i, i2);
    }

    public static final void wait(Object obj) throws InterruptedException {
        im7.e(obj, "$this$wait");
        obj.wait();
    }

    public static final Throwable withSuppressed(Exception exc, List<? extends Exception> list) {
        im7.e(exc, "$this$withSuppressed");
        im7.e(list, "suppressed");
        if (list.size() > 1) {
            System.out.println(list);
        }
        Iterator<? extends Exception> it = list.iterator();
        while (it.hasNext()) {
            n56.i(exc, it.next());
        }
        return exc;
    }

    public static final void writeMedium(zs7 zs7Var, int i) throws IOException {
        im7.e(zs7Var, "$this$writeMedium");
        zs7Var.K((i >>> 16) & Base64.BASELENGTH);
        zs7Var.K((i >>> 8) & Base64.BASELENGTH);
        zs7Var.K(i & Base64.BASELENGTH);
    }

    public static final int delimiterOffset(String str, char c, int i, int i2) {
        im7.e(str, "$this$delimiterOffset");
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return delimiterOffset(str, c, i, i2);
    }

    public static final String toHexString(int i) {
        String hexString = Integer.toHexString(i);
        im7.d(hexString, "Integer.toHexString(this)");
        return hexString;
    }

    public static final void closeQuietly(Socket socket) throws IOException {
        im7.e(socket, "$this$closeQuietly");
        try {
            socket.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception unused) {
        }
    }

    public static final void closeQuietly(ServerSocket serverSocket) throws IOException {
        im7.e(serverSocket, "$this$closeQuietly");
        try {
            serverSocket.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final int skipAll(xs7 xs7Var, byte b) throws EOFException {
        im7.e(xs7Var, "$this$skipAll");
        int i = 0;
        while (!xs7Var.J() && xs7Var.f(0L) == b) {
            i++;
            xs7Var.readByte();
        }
        return i;
    }
}
