.class public final Lix1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda1;
.implements Lob1;
.implements Lsc1;


# instance fields
.field public final e:Lqp2;

.field public final f:Lpp2;

.field public final g:Lxr0;


# direct methods
.method public constructor <init>(Lqp2;Lpp2;Lxr0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lix1;->e:Lqp2;

    .line 3
    iput-object p2, p0, Lix1;->f:Lpp2;

    .line 4
    iput-object p3, p0, Lix1;->g:Lxr0;

    return-void
.end method


# virtual methods
.method public final M(Lhl2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lix1;->e:Lqp2;

    iget-object v1, p0, Lix1;->g:Lxr0;

    invoke-virtual {v0, p1, v1}, Lqp2;->a(Lhl2;Lxr0;)Lqp2;

    return-void
.end method

.method public final Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lix1;->e:Lqp2;

    .line 2
    iget-object v1, v0, Lqp2;->a:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "ftl"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->g:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lqp2;->a:Ljava/util/HashMap;

    const-string v1, "ed"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lix1;->f:Lpp2;

    iget-object v0, p0, Lix1;->e:Lqp2;

    invoke-interface {p1, v0}, Lpp2;->b(Lqp2;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lix1;->f:Lpp2;

    iget-object v1, p0, Lix1;->e:Lqp2;

    .line 2
    iget-object v2, v1, Lqp2;->a:Ljava/util/HashMap;

    const-string v3, "action"

    const-string v4, "loaded"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, v1}, Lpp2;->b(Lqp2;)V

    return-void
.end method

.method public final t(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lix1;->e:Lqp2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauj;->e:Landroid/os/Bundle;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cnt"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, v0, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "network_coarse"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "gnt"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, v0, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "network_fine"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
