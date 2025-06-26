package com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import org.apache.commons.io.EndianUtils;
import org.apache.commons.io.IOUtils;

/* loaded from: classes2.dex */
public abstract class VorbisCommentReader {
    private static final int FIRST_PAGE_LENGTH = 58;
    private static final int PACKET_TYPE_COMMENT = 3;
    private static final int PACKET_TYPE_IDENTIFICATION = 1;
    private static final int SECOND_PAGE_MAX_LENGTH = 67108864;

    private boolean findCommentHeader(InputStream inputStream) throws IOException {
        char[] cArr = new char[7];
        for (int i = 0; i < SECOND_PAGE_MAX_LENGTH; i++) {
            char c = (char) inputStream.read();
            char c2 = c != 3 ? c != 'b' ? c != 'i' ? c != 'o' ? c != 'v' ? c != 'r' ? c != 's' ? (char) 65535 : (char) 6 : (char) 3 : (char) 1 : (char) 2 : (char) 5 : (char) 4 : (char) 0;
            if (c2 >= 0) {
                cArr[c2] = c;
                if (cArr[1] == 'v' && cArr[2] == 'o' && cArr[3] == 'r' && cArr[4] == 'b' && cArr[5] == 'i' && cArr[6] == 's' && cArr[0] == 3) {
                    return true;
                }
            } else {
                Arrays.fill(cArr, (char) 0);
            }
        }
        return false;
    }

    private boolean findIdentificationHeader(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[58];
        IOUtils.readFully(inputStream, bArr);
        for (int i = 6; i < 58; i++) {
            if (bArr[i - 5] == 118 && bArr[i - 4] == 111 && bArr[i - 3] == 114 && bArr[i - 2] == 98 && bArr[i - 1] == 105 && bArr[i] == 115 && bArr[i - 6] == 1) {
                return true;
            }
        }
        return false;
    }

    private VorbisCommentHeader readCommentHeader(InputStream inputStream) throws IOException, VorbisCommentReaderException {
        try {
            return new VorbisCommentHeader(readUTF8String(inputStream, EndianUtils.readSwappedUnsignedInteger(inputStream)), EndianUtils.readSwappedUnsignedInteger(inputStream));
        } catch (UnsupportedEncodingException e) {
            throw new VorbisCommentReaderException(e);
        }
    }

    private String readContentVectorKey(InputStream inputStream, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < j; i++) {
            char c = (char) inputStream.read();
            if (c == '=') {
                return sb.toString();
            }
            sb.append(c);
        }
        return null;
    }

    private String readUTF8String(InputStream inputStream, long j) throws IOException {
        byte[] bArr = new byte[(int) j];
        IOUtils.readFully(inputStream, bArr);
        return Charset.forName("UTF-8").newDecoder().decode(ByteBuffer.wrap(bArr)).toString();
    }

    public abstract boolean onContentVectorKey(String str);

    public abstract void onContentVectorValue(String str, String str2) throws VorbisCommentReaderException;

    public abstract void onEndOfComment();

    public abstract void onError(VorbisCommentReaderException vorbisCommentReaderException);

    public abstract void onNoVorbisCommentFound();

    public abstract void onVorbisCommentFound();

    public abstract void onVorbisCommentHeaderFound(VorbisCommentHeader vorbisCommentHeader);

    public void readInputStream(InputStream inputStream) throws VorbisCommentReaderException {
        try {
            if (!findIdentificationHeader(inputStream)) {
                onNoVorbisCommentFound();
                return;
            }
            onVorbisCommentFound();
            OggInputStream oggInputStream = new OggInputStream(inputStream);
            if (!findCommentHeader(oggInputStream)) {
                onError(new VorbisCommentReaderException("No comment header found"));
                return;
            }
            VorbisCommentHeader commentHeader = readCommentHeader(oggInputStream);
            if (commentHeader != null) {
                onVorbisCommentHeaderFound(commentHeader);
                for (int i = 0; i < commentHeader.getUserCommentLength(); i++) {
                    try {
                        long swappedUnsignedInteger = EndianUtils.readSwappedUnsignedInteger(oggInputStream);
                        String lowerCase = readContentVectorKey(oggInputStream, swappedUnsignedInteger).toLowerCase();
                        if (onContentVectorKey(lowerCase)) {
                            onContentVectorValue(lowerCase, readUTF8String(oggInputStream, (int) ((swappedUnsignedInteger - lowerCase.length()) - 1)));
                        } else {
                            IOUtils.skipFully(oggInputStream, (swappedUnsignedInteger - lowerCase.length()) - 1);
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                onEndOfComment();
            }
        } catch (IOException e2) {
            onError(new VorbisCommentReaderException(e2));
        }
    }
}
