.class public final synthetic Lsl2;
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

    iput-object p1, p0, Lsl2;->a:Ljq2;

    iput-object p2, p0, Lsl2;->b:Lsy1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lsl2;->a:Ljq2;

    iget-object v1, p0, Lsl2;->b:Lsy1;

    check-cast p1, Lmw0;

    const-string v2, "u"

    .line 2
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    .line 3
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Lmw0;->g()Lsk2;

    move-result-object p2

    iget-boolean p2, p2, Lsk2;->d0:Z

    if-nez p2, :cond_1

    .line 5
    iget-object p1, v0, Ljq2;->a:Ljava/util/concurrent/Executor;

    new-instance p2, Liq2;

    invoke-direct {p2, v0, v6}, Liq2;-><init>(Ljq2;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    new-instance p2, Lzy1;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v3

    check-cast p1, Lsx0;

    .line 8
    invoke-interface {p1}, Lsx0;->e()Lwk2;

    move-result-object p1

    iget-object v5, p1, Lwk2;->b:Ljava/lang/String;

    const/4 v7, 0x2

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lzy1;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 9
    new-instance p1, Lyy1;

    invoke-direct {p1, v1, p2}, Lyy1;-><init>(Lsy1;Lzy1;)V

    invoke-virtual {v1, p1}, Lsy1;->c(Ljo2;)V

    return-void
.end method
