package defpackage;

import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface gn7<R> extends fn7 {
    R call(Object... objArr);

    R callBy(Map<Object, ? extends Object> map);

    List<Object> getParameters();

    nn7 getReturnType();

    List<Object> getTypeParameters();

    on7 getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    boolean isSuspend();
}
