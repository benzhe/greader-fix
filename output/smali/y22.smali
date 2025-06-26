.class public final Ly22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lsk2;

.field public final synthetic d:Lwk2;

.field public final synthetic e:Lv22;


# direct methods
.method public constructor <init>(Lv22;JLjava/lang/String;Lsk2;Lwk2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly22;->e:Lv22;

    iput-wide p2, p0, Ly22;->a:J

    iput-object p4, p0, Ly22;->b:Ljava/lang/String;

    iput-object p5, p0, Ly22;->c:Lsk2;

    iput-object p6, p0, Ly22;->d:Lwk2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 11

    .line 1
    iget-object v0, p0, Ly22;->e:Lv22;

    .line 2
    iget-object v0, v0, Lv22;->a:Lb20;

    .line 3
    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    iget-wide v2, p0, Ly22;->a:J

    sub-long/2addr v0, v2

    .line 4
    instance-of v2, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 5
    :cond_0
    instance-of v2, p1, Ll22;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 6
    :cond_1
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 7
    :cond_2
    instance-of v2, p1, Lpl2;

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto :goto_0

    .line 8
    :cond_3
    instance-of v2, p1, Lbu1;

    if-eqz v2, :cond_4

    .line 9
    invoke-static {p1}, Lc50;->l4(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    .line 10
    :goto_0
    iget-object v4, p0, Ly22;->e:Lv22;

    iget-object v5, p0, Ly22;->b:Ljava/lang/String;

    iget-object v6, p0, Ly22;->c:Lsk2;

    iget-object v9, v6, Lsk2;->a0:Ljava/lang/String;

    move v6, v2

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lv22;->a(Lv22;Ljava/lang/String;IJLjava/lang/String;)V

    .line 11
    iget-object v4, p0, Ly22;->e:Lv22;

    .line 12
    iget-boolean v5, v4, Lv22;->d:Z

    if-eqz v5, :cond_6

    .line 13
    iget-object v4, v4, Lv22;->b:Lx22;

    .line 14
    iget-object v5, p0, Ly22;->d:Lwk2;

    iget-object v6, p0, Ly22;->c:Lsk2;

    .line 15
    instance-of v7, p1, Loz1;

    if-eqz v7, :cond_5

    move-object v7, p1

    check-cast v7, Loz1;

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    move-object v8, v7

    move v7, v2

    move-wide v9, v0

    .line 16
    invoke-virtual/range {v4 .. v10}, Lx22;->a(Lwk2;Lsk2;ILoz1;J)V

    .line 17
    :cond_6
    sget-object v2, Ly40;->U4:Lo40;

    .line 18
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 19
    invoke-virtual {v4, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    invoke-static {p1}, Lc50;->l4(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p1

    .line 22
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    if-eq v2, v3, :cond_7

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->h:Lcom/google/android/gms/internal/ads/zzvh;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvh;->g:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 24
    new-instance v2, Loz1;

    sget-object v3, Ldm2;->q:Ldm2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->h:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-direct {v2, v3, p1}, Loz1;-><init>(Ldm2;Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 25
    invoke-static {v2}, Lc50;->l4(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p1

    .line 26
    :cond_8
    iget-object v2, p0, Ly22;->e:Lv22;

    .line 27
    iget-object v2, v2, Lv22;->e:Lnz1;

    .line 28
    iget-object v3, p0, Ly22;->c:Lsk2;

    invoke-virtual {v2, v3, v0, v1, p1}, Lnz1;->a(Lsk2;JLcom/google/android/gms/internal/ads/zzvh;)V

    :cond_9
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ly22;->e:Lv22;

    .line 2
    iget-object p1, p1, Lv22;->a:Lb20;

    .line 3
    invoke-interface {p1}, Lb20;->b()J

    move-result-wide v0

    iget-wide v2, p0, Ly22;->a:J

    sub-long/2addr v0, v2

    .line 4
    iget-object v4, p0, Ly22;->e:Lv22;

    iget-object v5, p0, Ly22;->b:Ljava/lang/String;

    iget-object p1, p0, Ly22;->c:Lsk2;

    iget-object v9, p1, Lsk2;->a0:Ljava/lang/String;

    const/4 v6, 0x0

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lv22;->a(Lv22;Ljava/lang/String;IJLjava/lang/String;)V

    .line 5
    iget-object p1, p0, Ly22;->e:Lv22;

    .line 6
    iget-boolean v2, p1, Lv22;->d:Z

    if-eqz v2, :cond_0

    .line 7
    iget-object v4, p1, Lv22;->b:Lx22;

    .line 8
    iget-object v5, p0, Ly22;->d:Lwk2;

    iget-object v6, p0, Ly22;->c:Lsk2;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    invoke-virtual/range {v4 .. v10}, Lx22;->a(Lwk2;Lsk2;ILoz1;J)V

    .line 9
    :cond_0
    sget-object p1, Ly40;->U4:Lo40;

    .line 10
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 11
    invoke-virtual {v2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Ly22;->e:Lv22;

    .line 14
    iget-object p1, p1, Lv22;->e:Lnz1;

    .line 15
    iget-object v2, p0, Ly22;->c:Lsk2;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lnz1;->a(Lsk2;JLcom/google/android/gms/internal/ads/zzvh;)V

    :cond_1
    return-void
.end method
