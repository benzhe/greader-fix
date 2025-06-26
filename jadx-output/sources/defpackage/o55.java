package defpackage;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class o55 {
    public final m4<String, p55> a = new m4<>();
    public final m4<String, PropertyValuesHolder[]> b = new m4<>();

    public static o55 a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return b(context, resourceId);
    }

    public static o55 b(Context context, int i) {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return c(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return c(arrayList);
        } catch (Exception e) {
            StringBuilder sbZ = jo.z("Can't load animation resource ID #0x");
            sbZ.append(Integer.toHexString(i));
            Log.w("MotionSpec", sbZ.toString(), e);
            return null;
        }
    }

    public static o55 c(List<Animator> list) {
        o55 o55Var = new o55();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Animator animator = list.get(i);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            o55Var.b.put(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
                interpolator = i55.b;
            } else if (interpolator instanceof AccelerateInterpolator) {
                interpolator = i55.c;
            } else if (interpolator instanceof DecelerateInterpolator) {
                interpolator = i55.d;
            }
            p55 p55Var = new p55(startDelay, duration, interpolator);
            p55Var.d = objectAnimator.getRepeatCount();
            p55Var.e = objectAnimator.getRepeatMode();
            o55Var.a.put(propertyName, p55Var);
        }
        return o55Var;
    }

    public <T> ObjectAnimator d(String str, T t, Property<T, ?> property) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t, e(str));
        objectAnimatorOfPropertyValuesHolder.setProperty(property);
        f(str).a(objectAnimatorOfPropertyValuesHolder);
        return objectAnimatorOfPropertyValuesHolder;
    }

    public PropertyValuesHolder[] e(String str) {
        if (!g(str)) {
            throw new IllegalArgumentException();
        }
        PropertyValuesHolder[] orDefault = this.b.getOrDefault(str, null);
        PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[orDefault.length];
        for (int i = 0; i < orDefault.length; i++) {
            propertyValuesHolderArr[i] = orDefault[i].clone();
        }
        return propertyValuesHolderArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o55) {
            return this.a.equals(((o55) obj).a);
        }
        return false;
    }

    public p55 f(String str) {
        if (this.a.getOrDefault(str, null) != null) {
            return this.a.getOrDefault(str, null);
        }
        throw new IllegalArgumentException();
    }

    public boolean g(String str) {
        return this.b.getOrDefault(str, null) != null;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return '\n' + o55.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.a + "}\n";
    }
}
