package defpackage;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
public final class b30 implements DynamiteModule.b.InterfaceC0004b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.b.InterfaceC0004b
    public final int a(Context context, String str, boolean z) throws DynamiteModule.a {
        return DynamiteModule.e(context, str, z);
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.b.InterfaceC0004b
    public final int b(Context context, String str) {
        return DynamiteModule.a(context, str);
    }
}
