.class public Lww0;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"

# interfaces
.implements Lhy0;


# instance fields
.field public A:Z

.field public final B:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public C:Landroid/view/View$OnAttachStateChangeListener;

.field public e:Lxw0;

.field public final f:Lep3;

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkb0<",
            "-",
            "Lxw0;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;

.field public i:Ler3;

.field public j:Lcom/google/android/gms/ads/internal/overlay/zzp;

.field public k:Lgy0;

.field public l:Liy0;

.field public m:Lra0;

.field public n:Lta0;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lcom/google/android/gms/ads/internal/overlay/zzx;

.field public final t:Lxj0;

.field public u:Lcom/google/android/gms/ads/internal/zza;

.field public v:Lsj0;

.field public w:Lnp0;

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Lxw0;Lep3;Z)V
    .locals 4

    .line 1
    new-instance v0, Lxj0;

    .line 2
    invoke-interface {p1}, Lxw0;->i0()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ll40;

    .line 3
    invoke-interface {p1}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ll40;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lxj0;-><init>(Lxw0;Landroid/content/Context;Ll40;)V

    .line 4
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lww0;->g:Ljava/util/HashMap;

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lww0;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lww0;->o:Z

    .line 8
    iput-object p2, p0, Lww0;->f:Lep3;

    .line 9
    iput-object p1, p0, Lww0;->e:Lxw0;

    .line 10
    iput-boolean p3, p0, Lww0;->p:Z

    .line 11
    iput-object v0, p0, Lww0;->t:Lxj0;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lww0;->v:Lsj0;

    .line 13
    new-instance p1, Ljava/util/HashSet;

    sget-object p2, Ly40;->m3:Lo40;

    .line 14
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 15
    invoke-virtual {p3, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 16
    check-cast p2, Ljava/lang/String;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lww0;->B:Ljava/util/HashSet;

    return-void
.end method

.method public static R()Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 1
    sget-object v0, Ly40;->s0:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkb0<",
            "-",
            "Lxw0;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyz()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Received GMSG: "

    .line 2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p3}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkb0;

    .line 6
    iget-object v0, p0, Lww0;->e:Lxw0;

    invoke-interface {p3, v0, p1}, Lkb0;->a(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lww0;->p:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final M()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lww0;->q:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final O()V
    .locals 3

    .line 1
    iget-object v0, p0, Lww0;->w:Lnp0;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lww0;->e:Lxw0;

    invoke-interface {v1}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 3
    sget-object v2, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    .line 5
    invoke-virtual {p0, v1, v0, v2}, Lww0;->s(Landroid/view/View;Lnp0;I)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lww0;->C:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lww0;->e:Lxw0;

    invoke-interface {v1}, Lxw0;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lww0;->C:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 8
    :goto_0
    new-instance v1, Lax0;

    invoke-direct {v1, p0, v0}, Lax0;-><init>(Lww0;Lnp0;)V

    iput-object v1, p0, Lww0;->C:Landroid/view/View$OnAttachStateChangeListener;

    .line 9
    iget-object v0, p0, Lww0;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lww0;->C:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    return-void
.end method

.method public final Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lww0;->k:Lgy0;

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lww0;->x:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lww0;->z:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lww0;->y:Z

    if-eqz v0, :cond_3

    .line 3
    :cond_1
    sget-object v0, Ly40;->l1:Lo40;

    .line 4
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lww0;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->i()Ll50;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lww0;->e:Lxw0;

    .line 8
    invoke-interface {v0}, Lxw0;->i()Ll50;

    move-result-object v0

    .line 9
    iget-object v0, v0, Ll50;->b:Lo50;

    .line 10
    iget-object v1, p0, Lww0;->e:Lxw0;

    .line 11
    invoke-interface {v1}, Liu0;->U()Lm50;

    move-result-object v1

    const-string v2, "awfllc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v0, v1, v2}, Lc50;->w2(Lo50;Lm50;[Ljava/lang/String;)Z

    .line 13
    :cond_2
    iget-object v0, p0, Lww0;->k:Lgy0;

    iget-boolean v1, p0, Lww0;->y:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lgy0;->a(Z)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lww0;->k:Lgy0;

    .line 15
    :cond_3
    iget-object v0, p0, Lww0;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->P()V

    return-void
.end method

.method public final U(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lww0;->e:Lxw0;

    .line 2
    invoke-interface {v1}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lww0;->A:Z

    .line 3
    invoke-static {p1, v1, v2}, Lc50;->A3(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p0, v1, p2}, Lww0;->V(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzti;->n(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzti;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lio3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio3;->c(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->C()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, v0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 10
    :cond_1
    invoke-static {}, Lds0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lm60;->b:Le60;

    .line 11
    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0, p1, p2}, Lww0;->V(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object p2

    .line 14
    iget-object v0, p2, Lor0;->e:Landroid/content/Context;

    iget-object p2, p2, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v0, p2}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object p2

    const-string v0, "AdWebViewClient.interceptRequest"

    .line 15
    invoke-interface {p2, p1, v0}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lww0;->R()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final V(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x108

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 v1, 0x14

    if-gt p1, v1, :cond_9

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/16 v2, 0x2710

    .line 4
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_0
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_8

    .line 9
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v3

    iget-object v2, p0, Lww0;->e:Lxw0;

    .line 11
    invoke-interface {v2}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lww0;->e:Lxw0;

    invoke-interface {v2}, Lxw0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v9, 0xea60

    move-object v7, v1

    .line 12
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    .line 13
    new-instance v2, Lds0;

    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v3}, Lds0;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v1, v3}, Lds0;->e(Ljava/net/HttpURLConnection;[B)V

    .line 16
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 17
    invoke-virtual {v2, v1, v4}, Lds0;->d(Ljava/net/HttpURLConnection;I)V

    const/16 v2, 0x12c

    if-lt v4, v2, :cond_7

    const/16 v2, 0x190

    if-ge v4, v2, :cond_7

    const-string v2, "Location"

    .line 18
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v4, "tel:"

    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 20
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v3

    .line 21
    :cond_1
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Protocol is null"

    .line 23
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lww0;->R()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_2
    :try_start_2
    const-string v4, "http"

    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string p1, "Unsupported scheme: "

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lww0;->R()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_4
    :try_start_3
    const-string v0, "Redirecting to "

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v3

    goto/16 :goto_0

    .line 32
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzd(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    .line 35
    :cond_8
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36
    :cond_9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 37
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Too many redirects (20)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 38
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 39
    throw p1
.end method

.method public final X(Landroid/net/Uri;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lww0;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v3, Ly40;->l3:Lo40;

    .line 5
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lww0;->B:Ljava/util/HashSet;

    .line 8
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Ly40;->n3:Lo40;

    .line 10
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 11
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_1

    const-string v2, "Parsing gmsg query params on BG thread: "

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/net/Uri;)Law2;

    move-result-object v2

    new-instance v3, Ldx0;

    invoke-direct {v3, p0, v1, v0, p1}, Ldx0;-><init>(Lww0;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Lms0;->e:Lzv2;

    .line 15
    new-instance v0, Lsv2;

    invoke-direct {v0, v2, v3}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {v2, v0, p1}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 16
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzg(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, v1, v0}, Lww0;->A(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 19
    sget-object p1, Ly40;->l4:Lo40;

    .line 20
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 21
    invoke-virtual {v1, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object p1

    invoke-virtual {p1}, Lor0;->e()Le50;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 24
    :cond_3
    sget-object p1, Lms0;->a:Lzv2;

    new-instance v1, Lyw0;

    invoke-direct {v1, v0}, Lyw0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lww0;->w:Lnp0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lnp0;->a()V

    .line 3
    iput-object v1, p0, Lww0;->w:Lnp0;

    .line 4
    :cond_0
    iget-object v0, p0, Lww0;->C:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lww0;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lww0;->C:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v2, p0, Lww0;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 8
    iput-object v1, p0, Lww0;->i:Ler3;

    .line 9
    iput-object v1, p0, Lww0;->j:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 10
    iput-object v1, p0, Lww0;->k:Lgy0;

    .line 11
    iput-object v1, p0, Lww0;->l:Liy0;

    .line 12
    iput-object v1, p0, Lww0;->m:Lra0;

    .line 13
    iput-object v1, p0, Lww0;->n:Lta0;

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p0, Lww0;->o:Z

    .line 15
    iput-boolean v2, p0, Lww0;->p:Z

    .line 16
    iput-boolean v2, p0, Lww0;->q:Z

    .line 17
    iput-object v1, p0, Lww0;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 18
    iget-object v2, p0, Lww0;->v:Lsj0;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 19
    invoke-virtual {v2, v3}, Lsj0;->f(Z)V

    .line 20
    iput-object v1, p0, Lww0;->v:Lsj0;

    .line 21
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o(Ljava/lang/String;Lkb0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkb0<",
            "-",
            "Lxw0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lww0;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lww0;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lww0;->i:Ler3;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ler3;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Loading resource: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lww0;->X(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lww0;->h:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object p2, p0, Lww0;->e:Lxw0;

    invoke-interface {p2}, Lxw0;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Blank page loaded, 1..."

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lww0;->e:Lxw0;

    invoke-interface {p2}, Lxw0;->w()V

    .line 5
    monitor-exit p1

    return-void

    .line 6
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lww0;->x:Z

    .line 8
    iget-object p1, p0, Lww0;->l:Liy0;

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Liy0;->a()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lww0;->l:Liy0;

    .line 11
    :cond_1
    invoke-virtual {p0}, Lww0;->Q()V

    return-void

    :catchall_0
    move-exception p2

    .line 12
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lww0;->e:Lxw0;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lxw0;->B(ZI)Z

    move-result p1

    return p1
.end method

.method public final r(IIZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lww0;->t:Lxj0;

    invoke-virtual {p3, p1, p2}, Lxj0;->f(II)V

    .line 2
    iget-object p3, p0, Lww0;->v:Lsj0;

    if-eqz p3, :cond_0

    .line 3
    iget-object v0, p3, Lsj0;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, p3, Lsj0;->e:I

    .line 5
    iput p2, p3, Lsj0;->f:I

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final s(Landroid/view/View;Lnp0;I)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lnp0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lnp0;->f(Landroid/view/View;)V

    .line 3
    invoke-interface {p2}, Lnp0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v1, Lbx0;

    invoke-direct {v1, p0, p1, p2, p3}, Lbx0;-><init>(Lww0;Landroid/view/View;Lnp0;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lww0;->U(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0xde

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobileads.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lww0;->X(Landroid/net/Uri;)V

    goto/16 :goto_7

    .line 6
    :cond_1
    iget-boolean v1, p0, Lww0;->o:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lww0;->e:Lxw0;

    invoke-interface {v1}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    .line 8
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    .line 9
    iget-object v0, p0, Lww0;->i:Ler3;

    if-eqz v0, :cond_5

    .line 10
    invoke-interface {v0}, Ler3;->onAdClicked()V

    .line 11
    iget-object v0, p0, Lww0;->w:Lnp0;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0, p2}, Lnp0;->b(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lww0;->i:Ler3;

    .line 14
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 15
    :cond_6
    iget-object p1, p0, Lww0;->e:Lxw0;

    invoke-interface {p1}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_b

    .line 16
    :try_start_0
    iget-object p1, p0, Lww0;->e:Lxw0;

    invoke-interface {p1}, Lxw0;->l()Ld23;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 17
    invoke-virtual {p1, v0}, Ld23;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 18
    iget-object v1, p0, Lww0;->e:Lxw0;

    .line 19
    invoke-interface {v1}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lww0;->e:Lxw0;

    .line 20
    invoke-interface {v3}, Lxw0;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lww0;->e:Lxw0;

    .line 21
    invoke-interface {v4}, Lxw0;->a()Landroid/app/Activity;

    move-result-object v4

    .line 22
    invoke-virtual {p1, v0, v1, v3, v4}, Ld23;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lf13; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_4

    :catch_0
    nop

    const-string p1, "Unable to append parameter to URL: "

    .line 23
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_3
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 24
    :cond_8
    :goto_4
    iget-object p1, p0, Lww0;->u:Lcom/google/android/gms/ads/internal/zza;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zza;->zzkc()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    .line 25
    :cond_9
    iget-object p1, p0, Lww0;->u:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zza;->zzbk(Ljava/lang/String;)V

    goto :goto_7

    .line 26
    :cond_a
    :goto_5
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 27
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v4, "android.intent.action.VIEW"

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    .line 28
    invoke-virtual {p0, p1}, Lww0;->x(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    goto :goto_7

    :cond_b
    const-string p1, "AdWebView unable to handle URL: "

    .line 29
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_6
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    :goto_7
    return v2
.end method

.method public final t(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lww0;->v:Lsj0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v3, v0, Lsj0;->k:Ljava/lang/Object;

    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v0, v0, Lsj0;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzku()Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v0, p0, Lww0;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v0

    xor-int/2addr v1, v2

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 6
    iget-object v0, p0, Lww0;->w:Lnp0;

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

    if-eqz p1, :cond_2

    .line 9
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/zzb;->url:Ljava/lang/String;

    .line 10
    :cond_2
    invoke-interface {v0, v1}, Lnp0;->b(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final x(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lww0;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->E0()Z

    move-result v0

    .line 2
    new-instance v8, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lww0;->e:Lxw0;

    invoke-interface {v2}, Lxw0;->c()Ljy0;

    move-result-object v2

    invoke-virtual {v2}, Ljy0;->b()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lww0;->i:Ler3;

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lww0;->j:Lcom/google/android/gms/ads/internal/overlay/zzp;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lww0;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    iget-object v0, p0, Lww0;->e:Lxw0;

    .line 5
    invoke-interface {v0}, Lxw0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v6

    iget-object v7, p0, Lww0;->e:Lxw0;

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lcom/google/android/gms/internal/ads/zzbar;Lxw0;)V

    .line 6
    invoke-virtual {p0, v8}, Lww0;->t(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final z(Ler3;Lra0;Lcom/google/android/gms/ads/internal/overlay/zzp;Lta0;Lcom/google/android/gms/ads/internal/overlay/zzx;ZLob0;Lcom/google/android/gms/ads/internal/zza;Lyp1;Lnp0;Lsy1;Ljq2;Lns1;Lpp2;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    if-nez p8, :cond_0

    .line 1
    new-instance v6, Lcom/google/android/gms/ads/internal/zza;

    iget-object v7, v0, Lww0;->e:Lxw0;

    invoke-interface {v7}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v5, v8}, Lcom/google/android/gms/ads/internal/zza;-><init>(Landroid/content/Context;Lnp0;Lcom/google/android/gms/internal/ads/zzatu;)V

    move-object v12, v6

    goto :goto_0

    :cond_0
    move-object/from16 v12, p8

    .line 2
    :goto_0
    new-instance v6, Lsj0;

    iget-object v7, v0, Lww0;->e:Lxw0;

    invoke-direct {v6, v7, v4}, Lsj0;-><init>(Lxw0;Lyp1;)V

    iput-object v6, v0, Lww0;->v:Lsj0;

    .line 3
    iput-object v5, v0, Lww0;->w:Lnp0;

    .line 4
    sget-object v5, Ly40;->z0:Lo40;

    .line 5
    sget-object v6, Los3;->j:Los3;

    iget-object v6, v6, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v6, v5}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v5

    .line 7
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    new-instance v5, Loa0;

    invoke-direct {v5, v1}, Loa0;-><init>(Lra0;)V

    const-string v6, "/adMetadata"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 9
    :cond_1
    new-instance v5, Lqa0;

    invoke-direct {v5, v2}, Lqa0;-><init>(Lta0;)V

    const-string v6, "/appEvent"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 10
    sget-object v5, Lva0;->k:Lkb0;

    const-string v6, "/backButton"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 11
    sget-object v5, Lva0;->l:Lkb0;

    const-string v6, "/refresh"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 12
    sget-object v5, Lva0;->a:Lkb0;

    sget-object v5, Lxa0;->a:Lkb0;

    const-string v6, "/canOpenApp"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 13
    sget-object v5, Lua0;->a:Lkb0;

    const-string v6, "/canOpenURLs"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 14
    sget-object v5, Lwa0;->a:Lkb0;

    const-string v6, "/canOpenIntents"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 15
    sget-object v5, Lva0;->e:Lkb0;

    const-string v6, "/close"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 16
    sget-object v5, Lva0;->f:Lkb0;

    const-string v6, "/customClose"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 17
    sget-object v5, Lva0;->o:Lkb0;

    const-string v6, "/instrument"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 18
    sget-object v5, Lva0;->q:Lkb0;

    const-string v6, "/delayPageLoaded"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 19
    sget-object v5, Lva0;->r:Lkb0;

    const-string v6, "/delayPageClosed"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 20
    sget-object v5, Lva0;->s:Lkb0;

    const-string v6, "/getLocationInfo"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 21
    sget-object v5, Lva0;->h:Lkb0;

    const-string v6, "/log"

    invoke-virtual {p0, v6, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 22
    new-instance v5, Lsb0;

    iget-object v6, v0, Lww0;->v:Lsj0;

    invoke-direct {v5, v12, v6, v4}, Lsb0;-><init>(Lcom/google/android/gms/ads/internal/zza;Lsj0;Lyp1;)V

    const-string v4, "/mraid"

    invoke-virtual {p0, v4, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 23
    iget-object v4, v0, Lww0;->t:Lxj0;

    const-string v5, "/mraidLoaded"

    invoke-virtual {p0, v5, v4}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 24
    new-instance v13, Lrb0;

    iget-object v6, v0, Lww0;->v:Lsj0;

    move-object v4, v13

    move-object v5, v12

    move-object/from16 v7, p11

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    invoke-direct/range {v4 .. v9}, Lrb0;-><init>(Lcom/google/android/gms/ads/internal/zza;Lsj0;Lsy1;Lns1;Lpp2;)V

    const-string v4, "/open"

    invoke-virtual {p0, v4, v13}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 25
    new-instance v4, Lew0;

    invoke-direct {v4}, Lew0;-><init>()V

    const-string v5, "/precache"

    invoke-virtual {p0, v5, v4}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 26
    sget-object v4, Lbb0;->a:Lkb0;

    const-string v5, "/touch"

    invoke-virtual {p0, v5, v4}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 27
    sget-object v4, Lva0;->m:Lkb0;

    const-string v5, "/video"

    invoke-virtual {p0, v5, v4}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 28
    sget-object v4, Lva0;->n:Lkb0;

    const-string v5, "/videoMeta"

    invoke-virtual {p0, v5, v4}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    const-string v4, "/httpTrack"

    const-string v5, "/click"

    if-eqz v10, :cond_2

    if-eqz v11, :cond_2

    .line 29
    new-instance v6, Lql2;

    invoke-direct {v6, v11, v10}, Lql2;-><init>(Ljq2;Lsy1;)V

    .line 30
    invoke-virtual {p0, v5, v6}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 31
    new-instance v5, Lsl2;

    invoke-direct {v5, v11, v10}, Lsl2;-><init>(Ljq2;Lsy1;)V

    .line 32
    invoke-virtual {p0, v4, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    goto :goto_1

    .line 33
    :cond_2
    sget-object v6, Lza0;->a:Lkb0;

    invoke-virtual {p0, v5, v6}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 34
    sget-object v5, Lya0;->a:Lkb0;

    invoke-virtual {p0, v4, v5}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    .line 35
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcq0;

    move-result-object v4

    iget-object v5, v0, Lww0;->e:Lxw0;

    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcq0;->h(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 36
    new-instance v4, Lpb0;

    iget-object v5, v0, Lww0;->e:Lxw0;

    .line 37
    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lpb0;-><init>(Landroid/content/Context;)V

    const-string v5, "/logScionEvent"

    .line 38
    invoke-virtual {p0, v5, v4}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 39
    new-instance v4, Lmb0;

    invoke-direct {v4, v3}, Lmb0;-><init>(Lob0;)V

    const-string v3, "/setInterstitialProperties"

    invoke-virtual {p0, v3, v4}, Lww0;->o(Ljava/lang/String;Lkb0;)V

    :cond_4
    move-object v3, p1

    .line 40
    iput-object v3, v0, Lww0;->i:Ler3;

    move-object/from16 v3, p3

    .line 41
    iput-object v3, v0, Lww0;->j:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 42
    iput-object v1, v0, Lww0;->m:Lra0;

    .line 43
    iput-object v2, v0, Lww0;->n:Lta0;

    move-object/from16 v1, p5

    .line 44
    iput-object v1, v0, Lww0;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 45
    iput-object v12, v0, Lww0;->u:Lcom/google/android/gms/ads/internal/zza;

    move/from16 v1, p6

    .line 46
    iput-boolean v1, v0, Lww0;->o:Z

    return-void
.end method
