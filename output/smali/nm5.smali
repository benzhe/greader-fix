.class public Lnm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmm5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnj5;Lorg/json/JSONObject;)Ltm5;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "settings_version"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "cache_duration"

    const/16 v3, 0xe10

    .line 2
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v1, "fabric"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "app"

    .line 4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "status"

    .line 5
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "new"

    .line 6
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "bundle_id"

    .line 7
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v5, "org_id"

    .line 8
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v1, 0x1

    if-eqz v4, :cond_0

    const-string v4, "https://update.crashlytics.com/spi/v1/platforms/android/apps"

    goto :goto_0

    .line 9
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v16, v5, v2

    const-string v6, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v13, v4

    .line 10
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v16, v5, v2

    const-string v6, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v16, v5, v2

    const-string v6, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps"

    .line 11
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "update_required"

    .line 12
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v18

    const-string v4, "report_upload_variant"

    .line 13
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    const-string v4, "native_report_upload_variant"

    .line 14
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    .line 15
    new-instance v6, Lpm5;

    move-object v11, v6

    invoke-direct/range {v11 .. v20}, Lpm5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 16
    new-instance v7, Lrm5;

    const/16 v2, 0x8

    const/4 v3, 0x4

    invoke-direct {v7, v2, v3}, Lrm5;-><init>(II)V

    const-string v2, "features"

    .line 17
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "collect_reports"

    .line 18
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 19
    new-instance v8, Lqm5;

    invoke-direct {v8, v1}, Lqm5;-><init>(Z)V

    int-to-long v1, v10

    const-string v3, "expires_at"

    .line 20
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_1

    .line 22
    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v11, 0x3e8

    mul-long v1, v1, v11

    add-long/2addr v1, v3

    move-wide v4, v1

    .line 24
    :goto_1
    new-instance v0, Ltm5;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ltm5;-><init>(JLpm5;Lrm5;Lqm5;II)V

    return-object v0
.end method
