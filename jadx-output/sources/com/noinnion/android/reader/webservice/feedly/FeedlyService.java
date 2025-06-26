package com.noinnion.android.reader.webservice.feedly;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* loaded from: classes2.dex */
public class FeedlyService {
    private static final String BASE_URL = "http://feedly.com/v3/";

    public static FeedlyEndpoint getService() {
        return (FeedlyEndpoint) new Retrofit.Builder().baseUrl(BASE_URL).addConverterFactory(GsonConverterFactory.create()).build().create(FeedlyEndpoint.class);
    }
}
