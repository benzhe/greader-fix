package defpackage;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class c5 {
    public static HashMap<String, Constructor<? extends x4>> b;
    public HashMap<Integer, ArrayList<x4>> a = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends x4>> map = new HashMap<>();
        b = map;
        try {
            map.put("KeyAttribute", y4.class.getConstructor(new Class[0]));
            b.put("KeyPosition", d5.class.getConstructor(new Class[0]));
            b.put("KeyCycle", a5.class.getConstructor(new Class[0]));
            b.put("KeyTimeCycle", f5.class.getConstructor(new Class[0]));
            b.put("KeyTrigger", g5.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e("KeyFrames", "unable to load", e);
        }
    }

    public c5(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, IllegalAccessException, InstantiationException, IOException, IllegalArgumentException, InvocationTargetException {
        Exception e;
        x4 x4VarNewInstance;
        HashMap<String, y6> map;
        try {
            int eventType = xmlPullParser.getEventType();
            x4 x4Var = null;
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (b.containsKey(name)) {
                        try {
                            x4VarNewInstance = b.get(name).newInstance(new Object[0]);
                        } catch (Exception e2) {
                            x4 x4Var2 = x4Var;
                            e = e2;
                            x4VarNewInstance = x4Var2;
                        }
                        try {
                            x4VarNewInstance.c(context, Xml.asAttributeSet(xmlPullParser));
                            b(x4VarNewInstance);
                        } catch (Exception e3) {
                            e = e3;
                            Log.e("KeyFrames", "unable to create ", e);
                            x4Var = x4VarNewInstance;
                            eventType = xmlPullParser.next();
                        }
                        x4Var = x4VarNewInstance;
                    } else if (name.equalsIgnoreCase("CustomAttribute") && x4Var != null && (map = x4Var.d) != null) {
                        y6.e(context, xmlPullParser, map);
                    }
                } else if (eventType == 3 && "KeyFrameSet".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    public void a(i5 i5Var) {
        ArrayList<x4> arrayList = this.a.get(Integer.valueOf(i5Var.b));
        if (arrayList != null) {
            i5Var.v.addAll(arrayList);
        }
        ArrayList<x4> arrayList2 = this.a.get(-1);
        if (arrayList2 != null) {
            Iterator<x4> it = arrayList2.iterator();
            while (it.hasNext()) {
                x4 next = it.next();
                String str = ((ConstraintLayout.a) i5Var.a.getLayoutParams()).U;
                String str2 = next.c;
                if ((str2 == null || str == null) ? false : str.matches(str2)) {
                    i5Var.v.add(next);
                }
            }
        }
    }

    public final void b(x4 x4Var) {
        if (!this.a.containsKey(Integer.valueOf(x4Var.b))) {
            this.a.put(Integer.valueOf(x4Var.b), new ArrayList<>());
        }
        this.a.get(Integer.valueOf(x4Var.b)).add(x4Var);
    }
}
