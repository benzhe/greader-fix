.class public final Lcs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda1;
.implements Lob1;
.implements Lsc1;


# instance fields
.field public final e:Lks1;

.field public final f:Lss1;


# direct methods
.method public constructor <init>(Lks1;Lss1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcs1;->e:Lks1;

    .line 3
    iput-object p2, p0, Lcs1;->f:Lss1;

    return-void
.end method


# virtual methods
.method public final M(Lhl2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcs1;->e:Lks1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lhl2;->b:Lfl2;

    iget-object v1, v1, Lfl2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget-object v1, p1, Lhl2;->b:Lfl2;

    iget-object v1, v1, Lfl2;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk2;

    .line 5
    iget v1, v1, Lsk2;->b:I

    const-string v2, "ad_format"

    packed-switch v1, :pswitch_data_0

    .line 6
    iget-object v1, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "unknown"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v1, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "app_open_ad"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    iget-object v2, v0, Lks1;->b:Lxr0;

    .line 10
    iget-boolean v2, v2, Lxr0;->g:Z

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const-string v3, "as"

    .line 11
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :pswitch_1
    iget-object v1, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "rewarded"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :pswitch_2
    iget-object v1, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "native_advanced"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :pswitch_3
    iget-object v1, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "native_express"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :pswitch_4
    iget-object v1, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "interstitial"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :pswitch_5
    iget-object v1, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "banner"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_1
    :goto_1
    iget-object v1, p1, Lhl2;->b:Lfl2;

    iget-object v1, v1, Lfl2;->b:Lwk2;

    iget-object v1, v1, Lwk2;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    iget-object v0, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lhl2;->b:Lfl2;

    iget-object p1, p1, Lfl2;->b:Lwk2;

    iget-object p1, p1, Lwk2;->b:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcs1;->e:Lks1;

    .line 2
    iget-object v0, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "action"

    const-string v2, "ftl"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcs1;->e:Lks1;

    .line 5
    iget-object v0, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcs1;->e:Lks1;

    .line 9
    iget-object v0, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->g:Ljava/lang/String;

    const-string v1, "ed"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcs1;->f:Lss1;

    iget-object v0, p0, Lcs1;->e:Lks1;

    .line 12
    iget-object v0, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-virtual {p1, v0}, Lvs1;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcs1;->e:Lks1;

    .line 2
    iget-object v0, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "action"

    const-string v2, "loaded"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcs1;->f:Lss1;

    iget-object v1, p0, Lcs1;->e:Lks1;

    .line 5
    iget-object v1, v1, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-virtual {v0, v1}, Lvs1;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final t(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcs1;->e:Lks1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauj;->e:Landroid/os/Bundle;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cnt"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "network_coarse"

    .line 6
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "gnt"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v0, v0, Lks1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "network_fine"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
