.class public final Lg42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Llb1;",
        ">",
        "Ljava/lang/Object;",
        "Ljz1<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field public final a:Llz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz1<",
            "TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lsz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsz1<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lzo2;

.field public final d:Lzv2;


# direct methods
.method public constructor <init>(Lzo2;Lzv2;Llz1;Lsz1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo2;",
            "Lzv2;",
            "Llz1<",
            "TAdapterT;T",
            "ListenerT;",
            ">;",
            "Lsz1<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg42;->c:Lzo2;

    .line 3
    iput-object p2, p0, Lg42;->d:Lzv2;

    .line 4
    iput-object p4, p0, Lg42;->b:Lsz1;

    .line 5
    iput-object p3, p0, Lg42;->a:Llz1;

    return-void
.end method

.method public static c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Error from: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", code: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lsk2;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lhl2;Lsk2;)Law2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            ")",
            "Law2<",
            "TAdT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 2
    iget-object v1, p2, Lsk2;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    :try_start_0
    iget-object v3, p0, Lg42;->a:Llz1;

    iget-object v4, p2, Lsk2;->u:Lorg/json/JSONObject;

    invoke-interface {v3, v2, v4}, Llz1;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lmz1;

    move-result-object v1
    :try_end_0
    .catch Lpl2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    .line 4
    new-instance p1, Ll22;

    const-string p2, "unable to instantiate mediation adapter class"

    invoke-direct {p1, p2}, Ll22;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p2, Lvv2$a;

    invoke-direct {p2, p1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    return-object p2

    .line 6
    :cond_1
    new-instance v2, Lxs0;

    invoke-direct {v2}, Lxs0;-><init>()V

    .line 7
    new-instance v3, Ll42;

    invoke-direct {v3, p0, v1, v2}, Ll42;-><init>(Lg42;Lmz1;Lxs0;)V

    .line 8
    iget-object v4, v1, Lmz1;->c:Llb1;

    invoke-interface {v4, v3}, Llb1;->X4(Ll42;)V

    .line 9
    iget-boolean v3, p2, Lsk2;->H:Z

    if-eqz v3, :cond_3

    .line 10
    iget-object v3, p1, Lhl2;->a:Lcl2;

    iget-object v3, v3, Lcl2;->a:Lll2;

    iget-object v3, v3, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    .line 12
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    const-string v3, "render_test_ad_label"

    .line 14
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    :cond_3
    iget-object v0, p0, Lg42;->c:Lzo2;

    sget-object v3, Lap2;->s:Lap2;

    .line 16
    invoke-virtual {v0, v3}, Lko2;->c(Ljava/lang/Object;)Loo2;

    move-result-object v0

    new-instance v3, Lj42;

    invoke-direct {v3, p0, p1, p2, v1}, Lj42;-><init>(Lg42;Lhl2;Lsk2;Lmz1;)V

    iget-object v4, p0, Lg42;->d:Lzv2;

    .line 17
    new-instance v5, Lro2;

    invoke-direct {v5, v3}, Lro2;-><init>(Lio2;)V

    invoke-virtual {v0, v5, v4}, Loo2;->a(Ljava/util/concurrent/Callable;Lzv2;)Lqo2;

    move-result-object v0

    .line 18
    sget-object v3, Lap2;->t:Lap2;

    .line 19
    invoke-virtual {v0}, Lqo2;->e()Llo2;

    move-result-object v4

    .line 20
    iget-object v0, v0, Lqo2;->f:Lko2;

    invoke-virtual {v0, v3, v4}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Lqo2;->f(Law2;)Lqo2;

    move-result-object v0

    sget-object v2, Lap2;->u:Lap2;

    .line 22
    invoke-virtual {v0}, Lqo2;->e()Llo2;

    move-result-object v3

    .line 23
    iget-object v0, v0, Lqo2;->f:Lko2;

    invoke-virtual {v0, v2, v3}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object v0

    .line 24
    new-instance v2, Li42;

    invoke-direct {v2, p0, p1, p2, v1}, Li42;-><init>(Lg42;Lhl2;Lsk2;Lmz1;)V

    .line 25
    new-instance p1, Luo2;

    invoke-direct {p1, v2}, Luo2;-><init>(Ljo2;)V

    .line 26
    iget-object p2, v0, Lqo2;->f:Lko2;

    .line 27
    iget-object p2, p2, Lko2;->a:Lzv2;

    .line 28
    invoke-virtual {v0, p1, p2}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lqo2;->e()Llo2;

    move-result-object p1

    return-object p1
.end method
