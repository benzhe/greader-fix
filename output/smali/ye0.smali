.class public final Lye0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnd0;
.implements Lze0;


# instance fields
.field public final e:Lwe0;

.field public final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/String;",
            "Lkb0<",
            "-",
            "Lwe0;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwe0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lye0;->e:Lwe0;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lye0;->f:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final Z(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p0, p1, p2}, Lc50;->d2(Lnd0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lye0;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v2, "Unregistering eventhandler: "

    .line 2
    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkb0;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lye0;->e:Lwe0;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkb0;

    invoke-interface {v2, v3, v1}, Lwe0;->n(Ljava/lang/String;Lkb0;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lye0;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lye0;->e:Lwe0;

    invoke-interface {v0, p1}, Lzd0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final d0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lc50;->f3(Lnd0;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final n(Ljava/lang/String;Lkb0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkb0<",
            "-",
            "Lwe0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lye0;->e:Lwe0;

    invoke-interface {v0, p1, p2}, Lwe0;->n(Ljava/lang/String;Lkb0;)V

    .line 2
    iget-object v0, p0, Lye0;->f:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o(Ljava/lang/String;Lkb0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkb0<",
            "-",
            "Lwe0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lye0;->e:Lwe0;

    invoke-interface {v0, p1, p2}, Lwe0;->o(Ljava/lang/String;Lkb0;)V

    .line 2
    iget-object v0, p0, Lye0;->f:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p0, p1, p2}, Lc50;->f3(Lnd0;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    .line 3
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
