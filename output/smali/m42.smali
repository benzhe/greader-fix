.class public final Lm42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljz1<",
        "Lj41;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg51;

.field public final c:Lt50;

.field public final d:Lzv2;

.field public final e:Lzo2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg51;Lzo2;Lzv2;Lt50;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm42;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lm42;->b:Lg51;

    .line 4
    iput-object p3, p0, Lm42;->e:Lzo2;

    .line 5
    iput-object p4, p0, Lm42;->d:Lzv2;

    .line 6
    iput-object p5, p0, Lm42;->c:Lt50;

    return-void
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lm42;->c:Lt50;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lsk2;->r:Lzk2;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lzk2;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lhl2;Lsk2;)Law2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            ")",
            "Law2<",
            "Lj41;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lr42;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lm42;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v2, Lp42;->a:Lg61;

    iget-object v3, p2, Lsk2;->t:Ljava/util/List;

    const/4 v4, 0x0

    .line 2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk2;

    invoke-direct {v0, v1, v2, v3}, Lr42;-><init>(Landroid/view/View;Lg61;Luk2;)V

    .line 3
    iget-object v1, p0, Lm42;->b:Lg51;

    new-instance v2, Lv61;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v2, v0}, Lg51;->b(Lv61;Lq41;)Lm41;

    move-result-object p1

    .line 5
    new-instance v0, Lq50;

    .line 6
    move-object v1, p1

    check-cast v1, Le01;

    .line 7
    iget-object v2, v1, Le01;->L:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lx91;

    iget-object v2, v1, Le01;->X:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lqa1;

    iget-object v2, v1, Le01;->b0:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lwf1;

    iget-object v2, v1, Le01;->T0:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lrf1;

    iget-object v1, v1, Le01;->o:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lq21;

    .line 8
    new-instance v1, Lq42;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lq42;-><init>(Lx91;Lqa1;Lwf1;Lrf1;Lq21;)V

    .line 9
    iget-object p2, p2, Lsk2;->r:Lzk2;

    iget-object v2, p2, Lzk2;->b:Ljava/lang/String;

    iget-object p2, p2, Lzk2;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lq50;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lm42;->e:Lzo2;

    sget-object v1, Lap2;->v:Lap2;

    .line 11
    invoke-virtual {p2, v1}, Lko2;->c(Ljava/lang/Object;)Loo2;

    move-result-object p2

    new-instance v1, Lo42;

    invoke-direct {v1, p0, v0}, Lo42;-><init>(Lm42;Lq50;)V

    iget-object v0, p0, Lm42;->d:Lzv2;

    .line 12
    new-instance v2, Lro2;

    invoke-direct {v2, v1}, Lro2;-><init>(Lio2;)V

    invoke-virtual {p2, v2, v0}, Loo2;->a(Ljava/util/concurrent/Callable;Lzv2;)Lqo2;

    move-result-object p2

    .line 13
    sget-object v0, Lap2;->w:Lap2;

    .line 14
    invoke-virtual {p2}, Lqo2;->e()Llo2;

    move-result-object v1

    .line 15
    iget-object p2, p2, Lqo2;->f:Lko2;

    invoke-virtual {p2, v0, v1}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object p2

    .line 16
    invoke-virtual {p1}, Lm41;->h()Lj41;

    move-result-object p1

    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lqo2;->f(Law2;)Lqo2;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lqo2;->e()Llo2;

    move-result-object p1

    return-object p1
.end method
