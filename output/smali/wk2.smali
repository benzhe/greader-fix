.class public final Lwk2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:J

.field public final g:Z

.field public final h:Ltk2;


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    const-string v2, ""

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    move-object v8, v5

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "nofill_urls"

    .line 6
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v10, "refresh_interval"

    .line 8
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_0

    :cond_1
    const-string v10, "gws_query_id"

    .line 10
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v10, "analytics_query_ad_event_id"

    .line 12
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const-string v10, "is_idless"

    .line 14
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 15
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    goto :goto_0

    :cond_4
    const-string v10, "response_code"

    .line 16
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 17
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_0

    :cond_5
    const-string v10, "latency"

    .line 18
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 19
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v6

    goto :goto_0

    .line 20
    :cond_6
    sget-object v10, Ly40;->S4:Lo40;

    .line 21
    sget-object v11, Los3;->j:Los3;

    iget-object v11, v11, Los3;->f:Lu40;

    .line 22
    invoke-virtual {v11, v10}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v10

    .line 23
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "public_error"

    .line 24
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 25
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v9

    sget-object v10, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v9, v10, :cond_7

    .line 26
    new-instance v8, Ltk2;

    invoke-direct {v8, p1}, Ltk2;-><init>(Landroid/util/JsonReader;)V

    goto/16 :goto_0

    .line 27
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 29
    iput-object v0, p0, Lwk2;->a:Ljava/util/List;

    .line 30
    iput v1, p0, Lwk2;->c:I

    .line 31
    iput-object v4, p0, Lwk2;->b:Ljava/lang/String;

    .line 32
    iput-object v5, p0, Lwk2;->d:Ljava/lang/String;

    .line 33
    iput v2, p0, Lwk2;->e:I

    .line 34
    iput-wide v6, p0, Lwk2;->f:J

    .line 35
    iput-object v8, p0, Lwk2;->h:Ltk2;

    .line 36
    iput-boolean v3, p0, Lwk2;->g:Z

    return-void
.end method
