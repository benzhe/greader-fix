package okhttp3.internal.cache;

import defpackage.dt7;
import defpackage.im7;
import defpackage.pl7;
import defpackage.tt7;
import defpackage.xs7;
import defpackage.yj7;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes2.dex */
public class FaultHidingSink extends dt7 {
    private boolean hasErrors;
    private final pl7<IOException, yj7> onException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FaultHidingSink(tt7 tt7Var, pl7<? super IOException, yj7> pl7Var) {
        super(tt7Var);
        im7.e(tt7Var, "delegate");
        im7.e(pl7Var, "onException");
        this.onException = pl7Var;
    }

    @Override // defpackage.dt7, defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.close();
        } catch (IOException e) {
            this.hasErrors = true;
            this.onException.invoke(e);
        }
    }

    @Override // defpackage.dt7, defpackage.tt7, java.io.Flushable
    public void flush() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e) {
            this.hasErrors = true;
            this.onException.invoke(e);
        }
    }

    public final pl7<IOException, yj7> getOnException() {
        return this.onException;
    }

    @Override // defpackage.dt7, defpackage.tt7
    public void write(xs7 xs7Var, long j) throws EOFException {
        im7.e(xs7Var, "source");
        if (this.hasErrors) {
            xs7Var.skip(j);
            return;
        }
        try {
            super.write(xs7Var, j);
        } catch (IOException e) {
            this.hasErrors = true;
            this.onException.invoke(e);
        }
    }
}
