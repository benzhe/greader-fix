package okhttp3.internal.cache2;

import defpackage.bt7;
import defpackage.gm7;
import defpackage.im7;
import defpackage.vt7;
import defpackage.wt7;
import defpackage.xs7;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import okhttp3.internal.Util;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public final class Relay {
    public static final Companion Companion = new Companion(null);
    private static final long FILE_HEADER_SIZE = 32;
    public static final bt7 PREFIX_CLEAN;
    public static final bt7 PREFIX_DIRTY;
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    private final xs7 buffer;
    private final long bufferMaxSize;
    private boolean complete;
    private RandomAccessFile file;
    private final bt7 metadata;
    private int sourceCount;
    private vt7 upstream;
    private final xs7 upstreamBuffer;
    private long upstreamPos;
    private Thread upstreamReader;

    public static final class Companion {
        private Companion() {
        }

        public final Relay edit(File file, vt7 vt7Var, bt7 bt7Var, long j) throws IOException {
            im7.e(file, StringLookupFactory.KEY_FILE);
            im7.e(vt7Var, "upstream");
            im7.e(bt7Var, "metadata");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            Relay relay = new Relay(randomAccessFile, vt7Var, 0L, bt7Var, j, null);
            randomAccessFile.setLength(0L);
            relay.writeHeader(Relay.PREFIX_DIRTY, -1L, -1L);
            return relay;
        }

        public final Relay read(File file) throws IOException {
            im7.e(file, StringLookupFactory.KEY_FILE);
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            FileChannel channel = randomAccessFile.getChannel();
            im7.d(channel, "randomAccessFile.channel");
            FileOperator fileOperator = new FileOperator(channel);
            xs7 xs7Var = new xs7();
            fileOperator.read(0L, xs7Var, 32L);
            bt7 bt7Var = Relay.PREFIX_CLEAN;
            if (!im7.a(xs7Var.s(bt7Var.t()), bt7Var)) {
                throw new IOException("unreadable cache file");
            }
            long j = xs7Var.readLong();
            long j2 = xs7Var.readLong();
            xs7 xs7Var2 = new xs7();
            fileOperator.read(j + 32, xs7Var2, j2);
            return new Relay(randomAccessFile, null, j, xs7Var2.e0(), 0L, null);
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public final class RelaySource implements vt7 {
        private FileOperator fileOperator;
        private long sourcePos;
        private final wt7 timeout = new wt7();

        public RelaySource() {
            RandomAccessFile file = Relay.this.getFile();
            im7.c(file);
            FileChannel channel = file.getChannel();
            im7.d(channel, "file!!.channel");
            this.fileOperator = new FileOperator(channel);
        }

        @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.fileOperator == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.fileOperator = null;
            synchronized (Relay.this) {
                Relay.this.setSourceCount(r2.getSourceCount() - 1);
                if (Relay.this.getSourceCount() == 0) {
                    RandomAccessFile file = Relay.this.getFile();
                    Relay.this.setFile(null);
                    randomAccessFile = file;
                }
            }
            if (randomAccessFile != null) {
                Util.closeQuietly(randomAccessFile);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x0089, code lost:
        
            if (r4 != 2) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x008b, code lost:
        
            r10 = java.lang.Math.min(r21, r19.this$0.getUpstreamPos() - r19.sourcePos);
            r2 = r19.fileOperator;
            defpackage.im7.c(r2);
            r2.read(r19.sourcePos + 32, r20, r10);
            r19.sourcePos += r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00ab, code lost:
        
            return r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00ad, code lost:
        
            r0 = r19.this$0.getUpstream();
            defpackage.im7.c(r0);
            r14 = r0.read(r19.this$0.getUpstreamBuffer(), r19.this$0.getBufferMaxSize());
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00c8, code lost:
        
            if (r14 != (-1)) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00ca, code lost:
        
            r0 = r19.this$0;
            r0.commit(r0.getUpstreamPos());
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00d3, code lost:
        
            r2 = r19.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00d5, code lost:
        
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00d6, code lost:
        
            r19.this$0.setUpstreamReader(null);
            r0 = r19.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00dd, code lost:
        
            if (r0 == null) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00df, code lost:
        
            r0.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00e2, code lost:
        
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00e3, code lost:
        
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00eb, code lost:
        
            throw new java.lang.NullPointerException("null cannot be cast to non-null type java.lang.Object");
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00ef, code lost:
        
            r11 = java.lang.Math.min(r14, r21);
            r19.this$0.getUpstreamBuffer().e(r20, 0, r11);
            r19.sourcePos += r11;
            r13 = r19.fileOperator;
            defpackage.im7.c(r13);
            r13.write(r19.this$0.getUpstreamPos() + 32, r19.this$0.getUpstreamBuffer().clone(), r14);
            r2 = r19.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0126, code lost:
        
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0127, code lost:
        
            r19.this$0.getBuffer().write(r19.this$0.getUpstreamBuffer(), r14);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0146, code lost:
        
            if (r19.this$0.getBuffer().f <= r19.this$0.getBufferMaxSize()) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0148, code lost:
        
            r19.this$0.getBuffer().skip(r19.this$0.getBuffer().f - r19.this$0.getBufferMaxSize());
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0161, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0163, code lost:
        
            r0 = r19.this$0;
            r0.setUpstreamPos(r0.getUpstreamPos() + r14);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x016d, code lost:
        
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x016e, code lost:
        
            r2 = r19.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0170, code lost:
        
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0171, code lost:
        
            r19.this$0.setUpstreamReader(null);
            r0 = r19.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0178, code lost:
        
            if (r0 == null) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x017a, code lost:
        
            r0.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x017d, code lost:
        
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x017e, code lost:
        
            return r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0186, code lost:
        
            throw new java.lang.NullPointerException("null cannot be cast to non-null type java.lang.Object");
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x018b, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x018c, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x018f, code lost:
        
            monitor-enter(r19.this$0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x0190, code lost:
        
            r19.this$0.setUpstreamReader(null);
            r3 = r19.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x0197, code lost:
        
            if (r3 == null) goto L74;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x01a0, code lost:
        
            throw new java.lang.NullPointerException("null cannot be cast to non-null type java.lang.Object");
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x01a1, code lost:
        
            r3.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x01a5, code lost:
        
            throw r0;
         */
        @Override // defpackage.vt7
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long read(defpackage.xs7 r20, long r21) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 440
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache2.Relay.RelaySource.read(xs7, long):long");
        }

        @Override // defpackage.vt7
        public wt7 timeout() {
            return this.timeout;
        }
    }

    static {
        bt7.a aVar = bt7.i;
        PREFIX_CLEAN = aVar.c("OkHttp cache v1\n");
        PREFIX_DIRTY = aVar.c("OkHttp DIRTY :(\n");
    }

    private Relay(RandomAccessFile randomAccessFile, vt7 vt7Var, long j, bt7 bt7Var, long j2) {
        this.file = randomAccessFile;
        this.upstream = vt7Var;
        this.upstreamPos = j;
        this.metadata = bt7Var;
        this.bufferMaxSize = j2;
        this.upstreamBuffer = new xs7();
        this.complete = vt7Var == null;
        this.buffer = new xs7();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeHeader(bt7 bt7Var, long j, long j2) throws IOException {
        xs7 xs7Var = new xs7();
        xs7Var.F(bt7Var);
        xs7Var.g0(j);
        xs7Var.g0(j2);
        if (!(xs7Var.f == 32)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        RandomAccessFile randomAccessFile = this.file;
        im7.c(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        im7.d(channel, "file!!.channel");
        new FileOperator(channel).write(0L, xs7Var, 32L);
    }

    private final void writeMetadata(long j) throws IOException {
        xs7 xs7Var = new xs7();
        xs7Var.F(this.metadata);
        RandomAccessFile randomAccessFile = this.file;
        im7.c(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        im7.d(channel, "file!!.channel");
        new FileOperator(channel).write(32 + j, xs7Var, this.metadata.t());
    }

    public final void commit(long j) throws IOException {
        writeMetadata(j);
        RandomAccessFile randomAccessFile = this.file;
        im7.c(randomAccessFile);
        randomAccessFile.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j, this.metadata.t());
        RandomAccessFile randomAccessFile2 = this.file;
        im7.c(randomAccessFile2);
        randomAccessFile2.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
        }
        vt7 vt7Var = this.upstream;
        if (vt7Var != null) {
            Util.closeQuietly(vt7Var);
        }
        this.upstream = null;
    }

    public final xs7 getBuffer() {
        return this.buffer;
    }

    public final long getBufferMaxSize() {
        return this.bufferMaxSize;
    }

    public final boolean getComplete() {
        return this.complete;
    }

    public final RandomAccessFile getFile() {
        return this.file;
    }

    public final int getSourceCount() {
        return this.sourceCount;
    }

    public final vt7 getUpstream() {
        return this.upstream;
    }

    public final xs7 getUpstreamBuffer() {
        return this.upstreamBuffer;
    }

    public final long getUpstreamPos() {
        return this.upstreamPos;
    }

    public final Thread getUpstreamReader() {
        return this.upstreamReader;
    }

    public final boolean isClosed() {
        return this.file == null;
    }

    public final bt7 metadata() {
        return this.metadata;
    }

    public final vt7 newSource() {
        synchronized (this) {
            if (this.file == null) {
                return null;
            }
            this.sourceCount++;
            return new RelaySource();
        }
    }

    public final void setComplete(boolean z) {
        this.complete = z;
    }

    public final void setFile(RandomAccessFile randomAccessFile) {
        this.file = randomAccessFile;
    }

    public final void setSourceCount(int i) {
        this.sourceCount = i;
    }

    public final void setUpstream(vt7 vt7Var) {
        this.upstream = vt7Var;
    }

    public final void setUpstreamPos(long j) {
        this.upstreamPos = j;
    }

    public final void setUpstreamReader(Thread thread) {
        this.upstreamReader = thread;
    }

    public /* synthetic */ Relay(RandomAccessFile randomAccessFile, vt7 vt7Var, long j, bt7 bt7Var, long j2, gm7 gm7Var) {
        this(randomAccessFile, vt7Var, j, bt7Var, j2);
    }
}
