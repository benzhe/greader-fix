package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes2.dex */
public class yx6 {
    public boolean a = false;
    public String b = null;
    public ArrayList<xx6> c;

    public ArrayList<xx6> a(Reader reader) throws XmlPullParserException, IOException {
        this.c = new ArrayList<>();
        XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
        xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        XmlPullParser xmlPullParserNewPullParser = xmlPullParserFactoryNewInstance.newPullParser();
        xmlPullParserNewPullParser.setInput(reader);
        for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
            if (eventType == 2) {
                if (xmlPullParserNewPullParser.getName().equals("opml")) {
                    this.a = true;
                } else if (this.a && xmlPullParserNewPullParser.getName().equals("outline")) {
                    String attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, NSRSS20.ENC_TYPE);
                    String attributeValue2 = xmlPullParserNewPullParser.getAttributeValue(null, "title");
                    String attributeValue3 = xmlPullParserNewPullParser.getAttributeValue(null, AtomText.TYPE_TEXT);
                    if (attributeValue == null) {
                        if (attributeValue2 == null) {
                            attributeValue2 = attributeValue3;
                        }
                        this.b = attributeValue2;
                    } else {
                        xx6 xx6Var = new xx6();
                        if (attributeValue2 == null) {
                            attributeValue2 = attributeValue3;
                        }
                        xx6Var.a = attributeValue2;
                        String attributeValue4 = xmlPullParserNewPullParser.getAttributeValue(null, "xmlUrl");
                        if (attributeValue4 == null) {
                            attributeValue4 = xmlPullParserNewPullParser.getAttributeValue(null, "xmlUrl".toLowerCase());
                        }
                        xx6Var.b = attributeValue4;
                        xmlPullParserNewPullParser.getAttributeValue(null, "htmlUrl");
                        xx6Var.c = this.b;
                        String str = xx6Var.b;
                        if (str != null) {
                            if (xx6Var.a == null) {
                                xx6Var.a = str;
                            }
                            this.c.add(xx6Var);
                        }
                    }
                }
            }
        }
        return this.c;
    }
}
