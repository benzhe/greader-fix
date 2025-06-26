package defpackage;

import android.graphics.Bitmap;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class uy6 implements ty6 {
    public static final Bitmap.CompressFormat g = Bitmap.CompressFormat.PNG;
    public final File a;
    public final File b;
    public final az6 c;
    public int d = 32768;
    public Bitmap.CompressFormat e = g;
    public int f = 100;

    public uy6(File file, File file2, az6 az6Var) {
        if (file == null) {
            throw new IllegalArgumentException("cacheDir argument must be not null");
        }
        if (az6Var == null) {
            throw new IllegalArgumentException("fileNameGenerator argument must be not null");
        }
        this.a = file;
        this.b = file2;
        this.c = az6Var;
    }

    @Override // defpackage.ty6
    public File a(String str) {
        return c(str);
    }

    @Override // defpackage.ty6
    public boolean b(String str, InputStream inputStream, o07 o07Var) throws Throwable {
        Throwable th;
        boolean zE;
        BufferedOutputStream bufferedOutputStream;
        File fileC = c(str);
        File file = new File(fileC.getAbsolutePath() + ".tmp");
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), this.d);
            try {
                zE = n56.E(inputStream, bufferedOutputStream, o07Var, this.d);
            } finally {
            }
        } catch (Throwable th2) {
            th = th2;
            zE = false;
        }
        try {
            bufferedOutputStream.close();
        } catch (Exception unused) {
        } catch (Throwable th3) {
            th = th3;
            if (!((!zE || file.renameTo(fileC)) ? zE : false)) {
                file.delete();
            }
            throw th;
        }
        boolean z = (!zE || file.renameTo(fileC)) ? zE : false;
        if (!z) {
            file.delete();
        }
        return z;
    }

    public File c(String str) {
        File file;
        Objects.requireNonNull(this.c);
        String strValueOf = String.valueOf(str.hashCode());
        File file2 = this.a;
        if (!file2.exists() && !this.a.mkdirs() && (file = this.b) != null && (file.exists() || this.b.mkdirs())) {
            file2 = this.b;
        }
        return new File(file2, strValueOf);
    }

    @Override // defpackage.ty6
    public void clear() {
        File[] fileArrListFiles = this.a.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
    }
}
