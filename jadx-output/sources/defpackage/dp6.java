package defpackage;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.text.TextUtils;
import com.noinnion.android.greader.provider.ReaderProvider;
import defpackage.rn6;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class dp6 implements rn6.a {
    public final /* synthetic */ ep6 a;

    public dp6(ep6 ep6Var) {
        this.a = ep6Var;
    }

    @Override // rn6.a
    public void a(List<String> list) {
        ep6 ep6Var = this.a;
        Objects.requireNonNull(ep6Var);
        ContentResolver contentResolver = ep6Var.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("ids", "'" + TextUtils.join("','", list) + "'");
            contentResolver.update(ReaderProvider.p, contentValues, null, null);
            ep6Var.Y();
            contentResolver.query(ReaderProvider.i, null, null, null, null);
        } finally {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
        }
    }

    @Override // rn6.a
    public long b() {
        return 0L;
    }

    @Override // rn6.a
    public int c() {
        return 10000;
    }

    @Override // rn6.a
    public boolean d() {
        return true;
    }

    @Override // rn6.a
    public boolean e() {
        return true;
    }

    @Override // rn6.a
    public String[] f() {
        return null;
    }
}
