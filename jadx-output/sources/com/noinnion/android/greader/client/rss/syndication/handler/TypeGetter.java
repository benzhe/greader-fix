package com.noinnion.android.greader.client.rss.syndication.handler;

import com.noinnion.android.greader.client.rss.syndication.feed.Feed;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Reader;
import org.apache.commons.io.input.XmlStreamReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes2.dex */
public class TypeGetter {
    private static final String ATOM_ROOT = "feed";
    private static final String RSS_ROOT = "rss";
    private static final String TAG = "TypeGetter";

    public enum Type {
        RSS20,
        RSS091,
        ATOM,
        INVALID
    }

    private Reader createReader(Feed feed) {
        try {
            return new XmlStreamReader(new File(feed.getFile_url()));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public Type getType(Feed feed) throws XmlPullParserException, IOException, UnsupportedFeedtypeException {
        if (feed.getFile_url() != null) {
            try {
                XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
                xmlPullParserFactoryNewInstance.setNamespaceAware(true);
                XmlPullParser xmlPullParserNewPullParser = xmlPullParserFactoryNewInstance.newPullParser();
                xmlPullParserNewPullParser.setInput(createReader(feed));
                for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                    if (eventType == 2) {
                        String name = xmlPullParserNewPullParser.getName();
                        if (name.equals(ATOM_ROOT)) {
                            feed.setType("atom");
                            return Type.ATOM;
                        }
                        if (!name.equals("rss")) {
                            throw new UnsupportedFeedtypeException(Type.INVALID);
                        }
                        String attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "version");
                        if (attributeValue != null) {
                            if (attributeValue.equals("2.0")) {
                                feed.setType("rss");
                                return Type.RSS20;
                            }
                            if (attributeValue.equals("0.91") || attributeValue.equals("0.92")) {
                                return Type.RSS091;
                            }
                        }
                        throw new UnsupportedFeedtypeException(Type.INVALID);
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (XmlPullParserException e2) {
                e2.printStackTrace();
            }
        }
        throw new UnsupportedFeedtypeException(Type.INVALID);
    }
}
