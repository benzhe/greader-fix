package defpackage;

import java.util.ArrayDeque;
import java.util.Deque;

/* loaded from: classes.dex */
public final class th6 extends ThreadLocal<Deque<Runnable>> {
    @Override // java.lang.ThreadLocal
    public final /* synthetic */ Deque<Runnable> initialValue() {
        return new ArrayDeque();
    }
}
