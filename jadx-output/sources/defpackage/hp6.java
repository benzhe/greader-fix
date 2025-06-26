package defpackage;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.text.TextUtils;
import com.noinnion.android.greader.provider.ReaderProvider;
import defpackage.rn6;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class hp6 implements rn6.a {
    public final /* synthetic */ String a;
    public final /* synthetic */ ep6 b;

    public hp6(ep6 ep6Var, String str) {
        this.b = ep6Var;
        this.a = str;
    }

    @Override // rn6.a
    public void a(List<String> list) {
        ep6 ep6Var = this.b;
        String str = this.a;
        Objects.requireNonNull(ep6Var);
        if (TextUtils.isEmpty(str) || list.size() == 0) {
            return;
        }
        ContentResolver contentResolver = ep6Var.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("tag_uid", str);
            contentValues.put("ids", "'" + TextUtils.join("','", list) + "'");
            contentResolver.update(ReaderProvider.q, contentValues, null, null);
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
        return false;
    }

    @Override // rn6.a
    public boolean e() {
        return true;
    }

    @Override // rn6.a
    public String[] f() {
        return new String[]{rn6.STATE_STARRED};
    }
}
