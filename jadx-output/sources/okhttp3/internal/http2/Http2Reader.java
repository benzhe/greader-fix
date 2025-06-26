package okhttp3.internal.http2;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.at7;
import defpackage.bn7;
import defpackage.bt7;
import defpackage.en7;
import defpackage.gm7;
import defpackage.im7;
import defpackage.jo;
import defpackage.vt7;
import defpackage.wt7;
import defpackage.xs7;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public final class Http2Reader implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger;
    private final boolean client;
    private final ContinuationSource continuation;
    private final Hpack.Reader hpackReader;
    private final at7 source;

    public static final class Companion {
        private Companion() {
        }

        public final Logger getLogger() {
            return Http2Reader.logger;
        }

        public final int lengthWithoutPadding(int i, int i2, int i3) throws IOException {
            if ((i2 & 8) != 0) {
                i--;
            }
            if (i3 <= i) {
                return i - i3;
            }
            throw new IOException(jo.i("PROTOCOL_ERROR padding ", i3, " > remaining length ", i));
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public static final class ContinuationSource implements vt7 {
        private int flags;
        private int left;
        private int length;
        private int padding;
        private final at7 source;
        private int streamId;

        public ContinuationSource(at7 at7Var) {
            im7.e(at7Var, "source");
            this.source = at7Var;
        }

        private final void readContinuationHeader() throws IOException {
            int i = this.streamId;
            int medium = Util.readMedium(this.source);
            this.left = medium;
            this.length = medium;
            int iAnd = Util.and(this.source.readByte(), Base64.BASELENGTH);
            this.flags = Util.and(this.source.readByte(), Base64.BASELENGTH);
            Companion companion = Http2Reader.Companion;
            if (companion.getLogger().isLoggable(Level.FINE)) {
                companion.getLogger().fine(Http2.INSTANCE.frameLog(true, this.streamId, this.length, iAnd, this.flags));
            }
            int i2 = this.source.readInt() & Integer.MAX_VALUE;
            this.streamId = i2;
            if (iAnd == 9) {
                if (i2 != i) {
                    throw new IOException("TYPE_CONTINUATION streamId changed");
                }
            } else {
                throw new IOException(iAnd + " != TYPE_CONTINUATION");
            }
        }

        @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public final int getFlags() {
            return this.flags;
        }

        public final int getLeft() {
            return this.left;
        }

        public final int getLength() {
            return this.length;
        }

        public final int getPadding() {
            return this.padding;
        }

        public final int getStreamId() {
            return this.streamId;
        }

        @Override // defpackage.vt7
        public long read(xs7 xs7Var, long j) throws IOException {
            im7.e(xs7Var, "sink");
            while (true) {
                int i = this.left;
                if (i != 0) {
                    long j2 = this.source.read(xs7Var, Math.min(j, i));
                    if (j2 == -1) {
                        return -1L;
                    }
                    this.left -= (int) j2;
                    return j2;
                }
                this.source.skip(this.padding);
                this.padding = 0;
                if ((this.flags & 4) != 0) {
                    return -1L;
                }
                readContinuationHeader();
            }
        }

        public final void setFlags(int i) {
            this.flags = i;
        }

        public final void setLeft(int i) {
            this.left = i;
        }

        public final void setLength(int i) {
            this.length = i;
        }

        public final void setPadding(int i) {
            this.padding = i;
        }

        public final void setStreamId(int i) {
            this.streamId = i;
        }

        @Override // defpackage.vt7
        public wt7 timeout() {
            return this.source.timeout();
        }
    }

    public interface Handler {
        void ackSettings();

        void alternateService(int i, String str, bt7 bt7Var, String str2, int i2, long j);

        void data(boolean z, int i, at7 at7Var, int i2) throws IOException;

        void goAway(int i, ErrorCode errorCode, bt7 bt7Var);

        void headers(boolean z, int i, int i2, List<Header> list);

        void ping(boolean z, int i, int i2);

        void priority(int i, int i2, int i3, boolean z);

        void pushPromise(int i, int i2, List<Header> list) throws IOException;

        void rstStream(int i, ErrorCode errorCode);

        void settings(boolean z, Settings settings);

        void windowUpdate(int i, long j);
    }

    static {
        Logger logger2 = Logger.getLogger(Http2.class.getName());
        im7.d(logger2, "Logger.getLogger(Http2::class.java.name)");
        logger = logger2;
    }

    public Http2Reader(at7 at7Var, boolean z) {
        im7.e(at7Var, "source");
        this.source = at7Var;
        this.client = z;
        ContinuationSource continuationSource = new ContinuationSource(at7Var);
        this.continuation = continuationSource;
        this.hpackReader = new Hpack.Reader(continuationSource, RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT, 0, 4, null);
    }

    private final void readData(Handler handler, int i, int i2, int i3) throws IOException {
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
        }
        boolean z = (i2 & 1) != 0;
        if ((i2 & 32) != 0) {
            throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
        }
        int iAnd = (i2 & 8) != 0 ? Util.and(this.source.readByte(), Base64.BASELENGTH) : 0;
        handler.data(z, i3, this.source, Companion.lengthWithoutPadding(i, i2, iAnd));
        this.source.skip(iAnd);
    }

    private final void readGoAway(Handler handler, int i, int i2, int i3) throws IOException {
        if (i < 8) {
            throw new IOException(jo.g("TYPE_GOAWAY length < 8: ", i));
        }
        if (i3 != 0) {
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        int i4 = this.source.readInt();
        int i5 = this.source.readInt();
        int i6 = i - 8;
        ErrorCode errorCodeFromHttp2 = ErrorCode.Companion.fromHttp2(i5);
        if (errorCodeFromHttp2 == null) {
            throw new IOException(jo.g("TYPE_GOAWAY unexpected error code: ", i5));
        }
        bt7 bt7VarS = bt7.h;
        if (i6 > 0) {
            bt7VarS = this.source.s(i6);
        }
        handler.goAway(i4, errorCodeFromHttp2, bt7VarS);
    }

    private final List<Header> readHeaderBlock(int i, int i2, int i3, int i4) throws IOException {
        this.continuation.setLeft(i);
        ContinuationSource continuationSource = this.continuation;
        continuationSource.setLength(continuationSource.getLeft());
        this.continuation.setPadding(i2);
        this.continuation.setFlags(i3);
        this.continuation.setStreamId(i4);
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    private final void readHeaders(Handler handler, int i, int i2, int i3) throws IOException {
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
        }
        boolean z = (i2 & 1) != 0;
        int iAnd = (i2 & 8) != 0 ? Util.and(this.source.readByte(), Base64.BASELENGTH) : 0;
        if ((i2 & 32) != 0) {
            readPriority(handler, i3);
            i -= 5;
        }
        handler.headers(z, i3, -1, readHeaderBlock(Companion.lengthWithoutPadding(i, i2, iAnd), iAnd, i2, i3));
    }

    private final void readPing(Handler handler, int i, int i2, int i3) throws IOException {
        if (i != 8) {
            throw new IOException(jo.g("TYPE_PING length != 8: ", i));
        }
        if (i3 != 0) {
            throw new IOException("TYPE_PING streamId != 0");
        }
        handler.ping((i2 & 1) != 0, this.source.readInt(), this.source.readInt());
    }

    private final void readPriority(Handler handler, int i, int i2, int i3) throws IOException {
        if (i != 5) {
            throw new IOException(jo.h("TYPE_PRIORITY length: ", i, " != 5"));
        }
        if (i3 == 0) {
            throw new IOException("TYPE_PRIORITY streamId == 0");
        }
        readPriority(handler, i3);
    }

    private final void readPushPromise(Handler handler, int i, int i2, int i3) throws IOException {
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
        }
        int iAnd = (i2 & 8) != 0 ? Util.and(this.source.readByte(), Base64.BASELENGTH) : 0;
        handler.pushPromise(i3, this.source.readInt() & Integer.MAX_VALUE, readHeaderBlock(Companion.lengthWithoutPadding(i - 4, i2, iAnd), iAnd, i2, i3));
    }

    private final void readRstStream(Handler handler, int i, int i2, int i3) throws IOException {
        if (i != 4) {
            throw new IOException(jo.h("TYPE_RST_STREAM length: ", i, " != 4"));
        }
        if (i3 == 0) {
            throw new IOException("TYPE_RST_STREAM streamId == 0");
        }
        int i4 = this.source.readInt();
        ErrorCode errorCodeFromHttp2 = ErrorCode.Companion.fromHttp2(i4);
        if (errorCodeFromHttp2 == null) {
            throw new IOException(jo.g("TYPE_RST_STREAM unexpected error code: ", i4));
        }
        handler.rstStream(i3, errorCodeFromHttp2);
    }

    private final void readSettings(Handler handler, int i, int i2, int i3) throws IOException {
        int i4;
        if (i3 != 0) {
            throw new IOException("TYPE_SETTINGS streamId != 0");
        }
        if ((i2 & 1) != 0) {
            if (i != 0) {
                throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
            }
            handler.ackSettings();
            return;
        }
        if (i % 6 != 0) {
            throw new IOException(jo.g("TYPE_SETTINGS length % 6 != 0: ", i));
        }
        Settings settings = new Settings();
        bn7 bn7VarC = en7.c(en7.d(0, i), 6);
        int i5 = bn7VarC.e;
        int i6 = bn7VarC.f;
        int i7 = bn7VarC.g;
        if (i7 < 0 ? i5 >= i6 : i5 <= i6) {
            while (true) {
                int iAnd = Util.and(this.source.readShort(), Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                i4 = this.source.readInt();
                if (iAnd != 2) {
                    if (iAnd == 3) {
                        iAnd = 4;
                    } else if (iAnd == 4) {
                        iAnd = 7;
                        if (i4 < 0) {
                            throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                        }
                    } else if (iAnd == 5 && (i4 < 16384 || i4 > 16777215)) {
                        break;
                    }
                } else if (i4 != 0 && i4 != 1) {
                    throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                }
                settings.set(iAnd, i4);
                if (i5 == i6) {
                    break;
                } else {
                    i5 += i7;
                }
            }
            throw new IOException(jo.g("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: ", i4));
        }
        handler.settings(false, settings);
    }

    private final void readWindowUpdate(Handler handler, int i, int i2, int i3) throws IOException {
        if (i != 4) {
            throw new IOException(jo.g("TYPE_WINDOW_UPDATE length !=4: ", i));
        }
        long jAnd = Util.and(this.source.readInt(), 2147483647L);
        if (jAnd == 0) {
            throw new IOException("windowSizeIncrement was 0");
        }
        handler.windowUpdate(i3, jAnd);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.source.close();
    }

    public final boolean nextFrame(boolean z, Handler handler) throws IOException {
        im7.e(handler, "handler");
        try {
            this.source.D0(9L);
            int medium = Util.readMedium(this.source);
            if (medium > 16384) {
                throw new IOException(jo.g("FRAME_SIZE_ERROR: ", medium));
            }
            int iAnd = Util.and(this.source.readByte(), Base64.BASELENGTH);
            int iAnd2 = Util.and(this.source.readByte(), Base64.BASELENGTH);
            int i = this.source.readInt() & Integer.MAX_VALUE;
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                logger2.fine(Http2.INSTANCE.frameLog(true, i, medium, iAnd, iAnd2));
            }
            if (z && iAnd != 4) {
                StringBuilder sbZ = jo.z("Expected a SETTINGS frame but was ");
                sbZ.append(Http2.INSTANCE.formattedType$okhttp(iAnd));
                throw new IOException(sbZ.toString());
            }
            switch (iAnd) {
                case 0:
                    readData(handler, medium, iAnd2, i);
                    return true;
                case 1:
                    readHeaders(handler, medium, iAnd2, i);
                    return true;
                case 2:
                    readPriority(handler, medium, iAnd2, i);
                    return true;
                case 3:
                    readRstStream(handler, medium, iAnd2, i);
                    return true;
                case 4:
                    readSettings(handler, medium, iAnd2, i);
                    return true;
                case 5:
                    readPushPromise(handler, medium, iAnd2, i);
                    return true;
                case 6:
                    readPing(handler, medium, iAnd2, i);
                    return true;
                case 7:
                    readGoAway(handler, medium, iAnd2, i);
                    return true;
                case 8:
                    readWindowUpdate(handler, medium, iAnd2, i);
                    return true;
                default:
                    this.source.skip(medium);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    public final void readConnectionPreface(Handler handler) throws IOException {
        im7.e(handler, "handler");
        if (this.client) {
            if (!nextFrame(true, handler)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        at7 at7Var = this.source;
        bt7 bt7Var = Http2.CONNECTION_PREFACE;
        bt7 bt7VarS = at7Var.s(bt7Var.t());
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            StringBuilder sbZ = jo.z("<< CONNECTION ");
            sbZ.append(bt7VarS.w());
            logger2.fine(Util.format(sbZ.toString(), new Object[0]));
        }
        if (!im7.a(bt7Var, bt7VarS)) {
            StringBuilder sbZ2 = jo.z("Expected a connection header but was ");
            sbZ2.append(bt7VarS.O());
            throw new IOException(sbZ2.toString());
        }
    }

    private final void readPriority(Handler handler, int i) throws IOException {
        int i2 = this.source.readInt();
        handler.priority(i, i2 & Integer.MAX_VALUE, Util.and(this.source.readByte(), Base64.BASELENGTH) + 1, (i2 & ((int) 2147483648L)) != 0);
    }
}
