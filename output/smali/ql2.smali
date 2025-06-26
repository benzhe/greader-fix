.class public final synthetic Lql2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# instance fields
.field public final a:Ljq2;

.field public final b:Lsy1;


# direct methods
.method public constructor <init>(Ljq2;Lsy1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lql2;->a:Ljq2;

    iput-object p2, p0, Lql2;->b:Lsy1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lql2;->a:Ljq2;

    iget-object v1, p0, Lql2;->b:Lsy1;

    check-cast p1, Lmw0;

    const-string v2, "u"

    .line 2
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from click GMSG."

    .line 3
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lva0;->a(Lyx0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-interface {p1}, Lmw0;->g()Lsk2;

    move-result-object p2

    iget-boolean p2, p2, Lsk2;->d0:Z

    if-nez p2, :cond_1

    .line 6
    invoke-virtual {v0, v6}, Ljq2;->a(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    new-instance p2, Lzy1;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v3

    move-object v0, p1

    check-cast v0, Lsx0;

    .line 9
    invoke-interface {v0}, Lsx0;->e()Lwk2;

    move-result-object v0

    iget-object v5, v0, Lwk2;->b:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    check-cast p1, Lyx0;

    invoke-interface {p1}, Lyx0;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    const/4 v7, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    const/4 v7, 0x1

    :goto_0
    move-object v2, p2

    .line 11
    invoke-direct/range {v2 .. v7}, Lzy1;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 12
    new-instance p1, Lyy1;

    invoke-direct {p1, v1, p2}, Lyy1;-><init>(Lsy1;Lzy1;)V

    invoke-virtual {v1, p1}, Lsy1;->c(Ljo2;)V

    return-void
.end method
