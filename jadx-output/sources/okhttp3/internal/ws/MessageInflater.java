package okhttp3.internal.ws;

import defpackage.ht7;
import defpackage.im7;
import defpackage.vt7;
import defpackage.xs7;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import okhttp3.internal.http2.Settings;

/* loaded from: classes2.dex */
public final class MessageInflater implements Closeable {
    private final xs7 deflatedBytes;
    private final Inflater inflater;
    private final ht7 inflaterSource;
    private final boolean noContextTakeover;

    public MessageInflater(boolean z) {
        this.noContextTakeover = z;
        xs7 xs7Var = new xs7();
        this.deflatedBytes = xs7Var;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new ht7((vt7) xs7Var, inflater);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inflaterSource.close();
    }

    public final void inflate(xs7 xs7Var) throws DataFormatException, IOException {
        im7.e(xs7Var, "buffer");
        if (!(this.deflatedBytes.f == 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (this.noContextTakeover) {
            this.inflater.reset();
        }
        this.deflatedBytes.b0(xs7Var);
        this.deflatedBytes.a0(Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        long bytesRead = this.inflater.getBytesRead() + this.deflatedBytes.f;
        do {
            this.inflaterSource.a(xs7Var, Long.MAX_VALUE);
        } while (this.inflater.getBytesRead() < bytesRead);
    }
}
