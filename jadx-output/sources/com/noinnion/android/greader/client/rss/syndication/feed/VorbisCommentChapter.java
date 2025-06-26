package com.noinnion.android.greader.client.rss.syndication.feed;

import com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader.VorbisCommentReaderException;
import defpackage.jo;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class VorbisCommentChapter extends Chapter {
    public static final int CHAPTERTYPE_VORBISCOMMENT_CHAPTER = 3;
    private static final int CHAPTERXXX_LENGTH = 10;
    private int vorbisCommentId;

    public VorbisCommentChapter(int i) {
        this.vorbisCommentId = i;
    }

    public static String getAttributeTypeFromKey(String str) {
        int length = str.length();
        int i = CHAPTERXXX_LENGTH;
        if (length > i) {
            return str.substring(i, str.length());
        }
        return null;
    }

    public static int getIDFromKey(String str) throws VorbisCommentReaderException {
        if (str.length() < CHAPTERXXX_LENGTH) {
            throw new VorbisCommentReaderException(jo.o("key is too short (", str, ")"));
        }
        try {
            return Integer.parseInt(str.substring(8, 10));
        } catch (NumberFormatException e) {
            throw new VorbisCommentReaderException(e);
        }
    }

    public static long getStartTimeFromValue(String str) throws VorbisCommentReaderException {
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length < 3) {
            throw new VorbisCommentReaderException("Invalid time string");
        }
        try {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            long jConvert = timeUnit.convert(Long.parseLong(strArrSplit[0]), TimeUnit.HOURS);
            long jConvert2 = timeUnit.convert(Long.parseLong(strArrSplit[1]), TimeUnit.MINUTES);
            if (strArrSplit[2].contains("-->")) {
                strArrSplit[2] = strArrSplit[2].substring(0, strArrSplit[2].indexOf("-->"));
            }
            return jConvert + jConvert2 + timeUnit.convert((long) Float.parseFloat(strArrSplit[2]), TimeUnit.SECONDS);
        } catch (NumberFormatException e) {
            throw new VorbisCommentReaderException(e);
        }
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.Chapter
    public int getChapterType() {
        return 3;
    }

    public int getVorbisCommentId() {
        return this.vorbisCommentId;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.Chapter
    public void setLink(String str) {
        this.link = str;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.Chapter
    public void setStart(long j) {
        this.start = j;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.feed.Chapter
    public void setTitle(String str) {
        this.title = str;
    }

    public void setVorbisCommentId(int i) {
        this.vorbisCommentId = i;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("VorbisCommentChapter [id=");
        sbZ.append(this.id);
        sbZ.append(", title=");
        sbZ.append(this.title);
        sbZ.append(", link=");
        sbZ.append(this.link);
        sbZ.append(", start=");
        return jo.r(sbZ, this.start, "]");
    }

    public VorbisCommentChapter(long j, String str, FeedItem feedItem, String str2) {
        super(j, str, feedItem, str2);
    }
}
