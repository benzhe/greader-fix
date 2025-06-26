package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class cm7 implements gn7, Serializable {
    public static final Object NO_RECEIVER = a.e;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    public final Object receiver;
    private transient gn7 reflected;
    private final String signature;

    public static class a implements Serializable {
        public static final a e = new a();
    }

    public cm7() {
        this(NO_RECEIVER);
    }

    @Override // defpackage.gn7
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // defpackage.gn7
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public gn7 compute() {
        gn7 gn7Var = this.reflected;
        if (gn7Var != null) {
            return gn7Var;
        }
        gn7 gn7VarComputeReflected = computeReflected();
        this.reflected = gn7VarComputeReflected;
        return gn7VarComputeReflected;
    }

    public abstract gn7 computeReflected();

    @Override // defpackage.fn7
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    public String getName() {
        return this.name;
    }

    public in7 getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        if (!this.isTopLevel) {
            return sm7.a(cls);
        }
        Objects.requireNonNull(sm7.a);
        return new nm7(cls, "");
    }

    @Override // defpackage.gn7
    public List<Object> getParameters() {
        return getReflected().getParameters();
    }

    public gn7 getReflected() {
        gn7 gn7VarCompute = compute();
        if (gn7VarCompute != this) {
            return gn7VarCompute;
        }
        throw new dl7();
    }

    @Override // defpackage.gn7
    public nn7 getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // defpackage.gn7
    public List<Object> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // defpackage.gn7
    public on7 getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // defpackage.gn7
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // defpackage.gn7
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // defpackage.gn7
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // defpackage.gn7
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public cm7(Object obj) {
        this(obj, null, null, null, false);
    }

    public cm7(Object obj, Class cls, String str, String str2, boolean z) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z;
    }
}
