.class public final Lfu0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:I

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3
    :catch_0
    :cond_0
    sget-object p1, Ly40;->A:Lo40;

    const-string v1, "aggressive_media_codec_release"

    .line 4
    invoke-static {v0, v1, p1}, Lfu0;->a(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)Z

    move-result p1

    iput-boolean p1, p0, Lfu0;->a:Z

    .line 5
    sget-object p1, Ly40;->g:Lo40;

    const-string v1, "byte_buffer_precache_limit"

    .line 6
    invoke-static {v0, v1, p1}, Lfu0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)I

    move-result p1

    iput p1, p0, Lfu0;->b:I

    .line 7
    sget-object p1, Ly40;->p:Lo40;

    const-string v1, "exo_cache_buffer_size"

    invoke-static {v0, v1, p1}, Lfu0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)I

    move-result p1

    iput p1, p0, Lfu0;->c:I

    .line 8
    sget-object p1, Ly40;->c:Lo40;

    const-string v1, "exo_connect_timeout_millis"

    .line 9
    invoke-static {v0, v1, p1}, Lfu0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)I

    move-result p1

    iput p1, p0, Lfu0;->d:I

    const-string p1, "exo_player_version"

    .line 10
    sget-object v1, Ly40;->b:Lo40;

    if-eqz v0, :cond_1

    .line 11
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 12
    :catch_1
    :cond_1
    sget-object p1, Los3;->j:Los3;

    iget-object p1, p1, Los3;->f:Lu40;

    .line 13
    invoke-virtual {p1, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    :goto_0
    sget-object p1, Ly40;->d:Lo40;

    const-string v1, "exo_read_timeout_millis"

    .line 16
    invoke-static {v0, v1, p1}, Lfu0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)I

    move-result p1

    iput p1, p0, Lfu0;->e:I

    .line 17
    sget-object p1, Ly40;->e:Lo40;

    const-string v1, "load_check_interval_bytes"

    .line 18
    invoke-static {v0, v1, p1}, Lfu0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)I

    move-result p1

    iput p1, p0, Lfu0;->f:I

    .line 19
    sget-object p1, Ly40;->f:Lo40;

    const-string v1, "player_precache_limit"

    invoke-static {v0, v1, p1}, Lfu0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)I

    move-result p1

    iput p1, p0, Lfu0;->g:I

    .line 20
    sget-object p1, Ly40;->h:Lo40;

    const-string v1, "socket_receive_buffer_size"

    .line 21
    invoke-static {v0, v1, p1}, Lfu0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)I

    move-result p1

    iput p1, p0, Lfu0;->h:I

    .line 22
    sget-object p1, Ly40;->n2:Lo40;

    const-string v1, "use_cache_data_source"

    invoke-static {v0, v1, p1}, Lfu0;->a(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)Z

    move-result p1

    iput-boolean p1, p0, Lfu0;->i:Z

    .line 23
    sget-object p1, Ly40;->j:Lo40;

    const-string v1, "min_retry_count"

    invoke-static {v0, v1, p1}, Lfu0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)I

    move-result p1

    iput p1, p0, Lfu0;->j:I

    .line 24
    sget-object p1, Ly40;->m:Lo40;

    const-string v1, "treat_load_exception_as_non_fatal"

    .line 25
    invoke-static {v0, v1, p1}, Lfu0;->a(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)Z

    move-result p1

    iput-boolean p1, p0, Lfu0;->k:Z

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lo40<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 2
    invoke-virtual {v0, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return p2
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;Lo40;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lo40<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    :cond_0
    sget-object p0, Los3;->j:Los3;

    iget-object p0, p0, Los3;->f:Lu40;

    .line 3
    invoke-virtual {p0, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
