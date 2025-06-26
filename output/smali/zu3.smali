.class public final Lzu3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/location/Location;

.field public final g:Z

.field public final h:Landroid/os/Bundle;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field public final m:I

.field public final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Landroid/os/Bundle;

.field public final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Z

.field public final r:Lcom/google/android/gms/ads/query/AdInfo;

.field public final s:I

.field public final t:Ljava/lang/String;

.field public final u:I


# direct methods
.method public constructor <init>(Lcv3;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcv3;->g:Ljava/util/Date;

    .line 3
    iput-object v0, p0, Lzu3;->a:Ljava/util/Date;

    .line 4
    iget-object v0, p1, Lcv3;->h:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lzu3;->b:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcv3;->i:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lzu3;->c:Ljava/util/List;

    .line 8
    iget v0, p1, Lcv3;->j:I

    .line 9
    iput v0, p0, Lzu3;->d:I

    .line 10
    iget-object v0, p1, Lcv3;->a:Ljava/util/HashSet;

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lzu3;->e:Ljava/util/Set;

    .line 12
    iget-object v0, p1, Lcv3;->k:Landroid/location/Location;

    .line 13
    iput-object v0, p0, Lzu3;->f:Landroid/location/Location;

    .line 14
    iget-boolean v0, p1, Lcv3;->l:Z

    .line 15
    iput-boolean v0, p0, Lzu3;->g:Z

    .line 16
    iget-object v0, p1, Lcv3;->b:Landroid/os/Bundle;

    .line 17
    iput-object v0, p0, Lzu3;->h:Landroid/os/Bundle;

    .line 18
    iget-object v0, p1, Lcv3;->c:Ljava/util/HashMap;

    .line 19
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lzu3;->i:Ljava/util/Map;

    .line 20
    iget-object v0, p1, Lcv3;->m:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lzu3;->j:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcv3;->n:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lzu3;->k:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lzu3;->l:Lcom/google/android/gms/ads/search/SearchAdRequest;

    .line 25
    iget p2, p1, Lcv3;->o:I

    .line 26
    iput p2, p0, Lzu3;->m:I

    .line 27
    iget-object p2, p1, Lcv3;->d:Ljava/util/HashSet;

    .line 28
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lzu3;->n:Ljava/util/Set;

    .line 29
    iget-object p2, p1, Lcv3;->e:Landroid/os/Bundle;

    .line 30
    iput-object p2, p0, Lzu3;->o:Landroid/os/Bundle;

    .line 31
    iget-object p2, p1, Lcv3;->f:Ljava/util/HashSet;

    .line 32
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lzu3;->p:Ljava/util/Set;

    .line 33
    iget-boolean p2, p1, Lcv3;->p:Z

    .line 34
    iput-boolean p2, p0, Lzu3;->q:Z

    .line 35
    iget-object p2, p1, Lcv3;->q:Lcom/google/android/gms/ads/query/AdInfo;

    .line 36
    iput-object p2, p0, Lzu3;->r:Lcom/google/android/gms/ads/query/AdInfo;

    .line 37
    iget p2, p1, Lcv3;->r:I

    .line 38
    iput p2, p0, Lzu3;->s:I

    .line 39
    iget-object p2, p1, Lcv3;->s:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lzu3;->t:Ljava/lang/String;

    .line 41
    iget p1, p1, Lcv3;->t:I

    .line 42
    iput p1, p0, Lzu3;->u:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzu3;->h:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lgv3;->g:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 3
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->a:Lzr0;

    .line 4
    invoke-static {p1}, Lzr0;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lzu3;->n:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTestDeviceIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lzu3;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
