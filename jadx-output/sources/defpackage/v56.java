package defpackage;

import android.app.Application;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class v56 {
    public final Application a;
    public final String b;

    public v56(Application application, String str) {
        this.a = application;
        this.b = str;
    }

    public <T extends ii6> rb7<T> a(final ik6<T> ik6Var) {
        return new gg7(new Callable(this, ik6Var) { // from class: u56
            public final v56 e;
            public final ik6 f;

            {
                this.e = this;
                this.f = ik6Var;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                ii6 ii6Var;
                v56 v56Var = this.e;
                ik6 ik6Var2 = this.f;
                synchronized (v56Var) {
                    try {
                        FileInputStream fileInputStreamOpenFileInput = v56Var.a.openFileInput(v56Var.b);
                        try {
                            ii6Var = (ii6) ik6Var2.a(fileInputStreamOpenFileInput);
                            if (fileInputStreamOpenFileInput != null) {
                                fileInputStreamOpenFileInput.close();
                            }
                        } catch (Throwable th) {
                            if (fileInputStreamOpenFileInput != null) {
                                try {
                                    fileInputStreamOpenFileInput.close();
                                } catch (Throwable unused) {
                                }
                            }
                            throw th;
                        }
                    } catch (FileNotFoundException | kj6 e) {
                        n56.u1("Recoverable exception while reading cache: " + e.getMessage());
                        ii6Var = null;
                    }
                }
                return ii6Var;
            }
        });
    }

    public hb7 b(final ii6 ii6Var) {
        return new ae7(new Callable(this, ii6Var) { // from class: t56
            public final v56 e;
            public final ii6 f;

            {
                this.e = this;
                this.f = ii6Var;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                v56 v56Var = this.e;
                ii6 ii6Var2 = this.f;
                synchronized (v56Var) {
                    FileOutputStream fileOutputStreamOpenFileOutput = v56Var.a.openFileOutput(v56Var.b, 0);
                    try {
                        fileOutputStreamOpenFileOutput.write(ii6Var2.b());
                        fileOutputStreamOpenFileOutput.close();
                    } catch (Throwable th) {
                        if (fileOutputStreamOpenFileOutput != null) {
                            try {
                                fileOutputStreamOpenFileOutput.close();
                            } catch (Throwable unused) {
                            }
                        }
                        throw th;
                    }
                }
                return ii6Var2;
            }
        });
    }
}
