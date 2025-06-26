.class public final Lir0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkr0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/pm/PackageInfo;I)Law2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            "I)",
            "Law2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;I)Law2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Law2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/Context;I)Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Law2<",
            "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lxs0;

    invoke-direct {p2}, Lxs0;-><init>()V

    .line 2
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->a:Lzr0;

    .line 3
    invoke-static {p1}, Lzr0;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lms0;->a:Lzv2;

    new-instance v1, Llr0;

    invoke-direct {v1, p1, p2}, Llr0;-><init>(Landroid/content/Context;Lxs0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-object p2
.end method
