.class public final synthetic Lnm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lhl2;

.field public final f:Lsk2;

.field public final g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lom1;Lhl2;Lsk2;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnm1;->e:Lhl2;

    iput-object p3, p0, Lnm1;->f:Lsk2;

    iput-object p4, p0, Lnm1;->g:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Ldm2;->e:Ldm2;

    iget-object v1, p0, Lnm1;->e:Lhl2;

    iget-object v2, p0, Lnm1;->f:Lsk2;

    iget-object v3, p0, Lnm1;->g:Lorg/json/JSONObject;

    .line 2
    new-instance v4, Lwj1;

    invoke-direct {v4}, Lwj1;-><init>()V

    const-string v5, "template_id"

    const/4 v6, -0x1

    .line 3
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 4
    monitor-enter v4

    .line 5
    :try_start_0
    iput v5, v4, Lwj1;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    monitor-exit v4

    const-string v5, "custom_template_id"

    .line 7
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    monitor-enter v4

    .line 9
    :try_start_1
    iput-object v5, v4, Lwj1;->q:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 10
    monitor-exit v4

    const-string v5, "omid_settings"

    .line 11
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const-string v7, "omid_partner_name"

    .line 12
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 13
    :goto_0
    monitor-enter v4

    .line 14
    :try_start_2
    iput-object v5, v4, Lwj1;->u:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    monitor-exit v4

    .line 16
    iget-object v1, v1, Lhl2;->a:Lcl2;

    iget-object v1, v1, Lcl2;->a:Lll2;

    .line 17
    iget-object v5, v1, Lll2;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lwj1;->k()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 18
    invoke-virtual {v4}, Lwj1;->k()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    .line 19
    invoke-virtual {v4}, Lwj1;->c()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 20
    iget-object v1, v1, Lll2;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lwj1;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    new-instance v1, Lz22;

    const-string v2, "Unexpected custom template id in the response."

    invoke-direct {v1, v0, v2}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_2
    new-instance v1, Lz22;

    const-string v2, "No custom template id for custom template ad response."

    invoke-direct {v1, v0, v2}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    const-string v0, "rating"

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 23
    invoke-virtual {v3, v0, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 24
    monitor-enter v4

    .line 25
    :try_start_3
    iput-wide v0, v4, Lwj1;->n:D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    monitor-exit v4

    const-string v0, "headline"

    const-string v1, "headline"

    .line 27
    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v2, Lsk2;->H:Z

    if-eqz v2, :cond_4

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzj;->zzzu()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2, v7}, Ljo;->x(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v1, v5}, Ljo;->x(Ljava/lang/String;I)I

    move-result v5

    const-string v7, " : "

    invoke-static {v5, v2, v7, v1}, Ljo;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    :cond_4
    invoke-virtual {v4, v0, v1}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    const-string v1, "body"

    .line 31
    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "call_to_action"

    const-string v1, "call_to_action"

    .line 32
    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "store"

    const-string v1, "store"

    .line 33
    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    const-string v1, "price"

    .line 34
    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "advertiser"

    const-string v1, "advertiser"

    .line 35
    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catchall_0
    move-exception v0

    .line 36
    monitor-exit v4

    throw v0

    .line 37
    :cond_5
    new-instance v1, Lz22;

    .line 38
    invoke-virtual {v4}, Lwj1;->k()I

    move-result v2

    const/16 v3, 0x20

    const-string v4, "Invalid template ID: "

    invoke-static {v3, v4, v2}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 39
    monitor-exit v4

    throw v0

    :catchall_2
    move-exception v0

    .line 40
    monitor-exit v4

    throw v0

    :catchall_3
    move-exception v0

    .line 41
    monitor-exit v4

    throw v0
.end method
