.class public final Ley1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfp2;


# instance fields
.field public final e:Ldy1;


# direct methods
.method public constructor <init>(Ldy1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ley1;->e:Ldy1;

    return-void
.end method


# virtual methods
.method public final A(Lap2;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p2, Ly40;->M3:Lo40;

    .line 2
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v0, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    sget-object p2, Lap2;->i:Lap2;

    if-ne p2, p1, :cond_0

    .line 6
    iget-object p1, p0, Ley1;->e:Ldy1;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object p2

    invoke-interface {p2}, Lb20;->b()J

    move-result-wide v0

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p2, p1, Ldy1;->g:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iput-wide v0, p1, Ldy1;->c:J

    .line 10
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public final C(Lap2;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object p2, Ly40;->M3:Lo40;

    .line 2
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v0, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    sget-object p2, Lap2;->i:Lap2;

    if-ne p2, p1, :cond_0

    .line 6
    iget-object p1, p0, Ley1;->e:Ldy1;

    invoke-virtual {p1}, Ldy1;->a()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 7
    iget-object p1, p0, Ley1;->e:Ldy1;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object p2

    invoke-interface {p2}, Lb20;->b()J

    move-result-wide v0

    iget-object p2, p0, Ley1;->e:Ldy1;

    invoke-virtual {p2}, Ldy1;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 9
    invoke-virtual {p1, v0, v1}, Ldy1;->b(J)V

    :cond_0
    return-void
.end method

.method public final d(Lap2;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object p2, Ly40;->M3:Lo40;

    .line 2
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 3
    invoke-virtual {p3, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    sget-object p2, Lap2;->i:Lap2;

    if-ne p2, p1, :cond_0

    .line 6
    iget-object p1, p0, Ley1;->e:Ldy1;

    invoke-virtual {p1}, Ldy1;->a()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 7
    iget-object p1, p0, Ley1;->e:Ldy1;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object p2

    invoke-interface {p2}, Lb20;->b()J

    move-result-wide p2

    iget-object v0, p0, Ley1;->e:Ldy1;

    invoke-virtual {v0}, Ldy1;->a()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 9
    invoke-virtual {p1, p2, p3}, Ldy1;->b(J)V

    :cond_0
    return-void
.end method

.method public final z(Lap2;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
