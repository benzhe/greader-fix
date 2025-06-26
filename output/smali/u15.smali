.class public final Lu15;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public final c:Lis4;

.field public final synthetic d:Lx15;


# direct methods
.method public constructor <init>(Lx15;)V
    .locals 2

    iput-object p1, p0, Lu15;->d:Lx15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt15;

    iget-object v1, p1, Lly4;->a:Lrx4;

    .line 1
    invoke-direct {v0, p0, v1}, Lt15;-><init>(Lu15;Lny4;)V

    iput-object v0, p0, Lu15;->c:Lis4;

    iget-object p1, p1, Lly4;->a:Lrx4;

    .line 2
    iget-object p1, p1, Lrx4;->n:Lb20;

    .line 3
    invoke-interface {p1}, Lb20;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lu15;->a:J

    iput-wide v0, p0, Lu15;->b:J

    return-void
.end method


# virtual methods
.method public final a(ZZJ)Z
    .locals 6

    iget-object v0, p0, Lu15;->d:Lx15;

    .line 1
    invoke-virtual {v0}, Lyv4;->d()V

    iget-object v0, p0, Lu15;->d:Lx15;

    .line 2
    invoke-virtual {v0}, Lww4;->f()V

    .line 3
    invoke-static {}, Lod4;->b()Z

    iget-object v0, p0, Lu15;->d:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 4
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 5
    sget-object v1, Lew4;->p0:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu15;->d:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v0}, Lrx4;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu15;->d:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lex4;->t:Lbx4;

    iget-object v1, p0, Lu15;->d:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 9
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 10
    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lbx4;->b(J)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lu15;->d:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 12
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lex4;->t:Lbx4;

    iget-object v1, p0, Lu15;->d:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 14
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 15
    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lbx4;->b(J)V

    .line 16
    :cond_1
    :goto_0
    iget-wide v0, p0, Lu15;->a:J

    sub-long v0, p3, v0

    if-nez p1, :cond_3

    const-wide/16 v3, 0x3e8

    cmp-long p1, v0, v3

    if-ltz p1, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Lu15;->d:Lx15;

    iget-object p1, p1, Lly4;->a:Lrx4;

    .line 18
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 19
    iget-object p1, p1, Lqw4;->n:Low4;

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, p3, p2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    if-nez p2, :cond_5

    .line 21
    sget-object p1, Lrd4;->f:Lrd4;

    .line 22
    invoke-virtual {p1}, Lrd4;->b()Lsd4;

    move-result-object p1

    invoke-interface {p1}, Lsd4;->a()Z

    .line 23
    iget-object p1, p0, Lu15;->d:Lx15;

    iget-object p1, p1, Lly4;->a:Lrx4;

    .line 24
    iget-object p1, p1, Lrx4;->g:Lcs4;

    .line 25
    sget-object v0, Lew4;->U:Ldw4;

    .line 26
    invoke-virtual {p1, v2, v0}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-wide v0, p0, Lu15;->b:J

    sub-long v0, p3, v0

    iput-wide p3, p0, Lu15;->b:J

    goto :goto_2

    .line 27
    :cond_4
    invoke-virtual {p0}, Lu15;->b()J

    move-result-wide v0

    .line 28
    :cond_5
    :goto_2
    iget-object p1, p0, Lu15;->d:Lx15;

    iget-object p1, p1, Lly4;->a:Lrx4;

    .line 29
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 30
    iget-object p1, p1, Lqw4;->n:Low4;

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Recording user engagement, ms"

    invoke-virtual {p1, v4, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    .line 32
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_et"

    .line 33
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lu15;->d:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 34
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 35
    invoke-virtual {v0}, Lcs4;->x()Z

    move-result v0

    iget-object v1, p0, Lu15;->d:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 36
    invoke-virtual {v1}, Lrx4;->y()Lh05;

    move-result-object v1

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 37
    invoke-virtual {v1, v0}, Lh05;->p(Z)La05;

    move-result-object v0

    .line 38
    invoke-static {v0, p1, v3}, Lh05;->r(La05;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lu15;->d:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 39
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 40
    sget-object v1, Lew4;->T:Ldw4;

    .line 41
    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    const-wide/16 v4, 0x1

    const-string v0, "_fr"

    .line 42
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    iget-object v0, p0, Lu15;->d:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 43
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 44
    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_8

    :cond_7
    iget-object p2, p0, Lu15;->d:Lx15;

    iget-object p2, p2, Lly4;->a:Lrx4;

    .line 45
    invoke-virtual {p2}, Lrx4;->s()Lsz4;

    move-result-object p2

    const-string v0, "auto"

    const-string v1, "_e"

    .line 46
    invoke-virtual {p2, v0, v1, p1}, Lsz4;->A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    iput-wide p3, p0, Lu15;->a:J

    iget-object p1, p0, Lu15;->c:Lis4;

    .line 47
    invoke-virtual {p1}, Lis4;->c()V

    iget-object p1, p0, Lu15;->c:Lis4;

    const-wide/32 p2, 0x36ee80

    .line 48
    invoke-virtual {p1, p2, p3}, Lis4;->b(J)V

    return v3
.end method

.method public final b()J
    .locals 4

    iget-object v0, p0, Lu15;->d:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 2
    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lu15;->b:J

    iput-wide v0, p0, Lu15;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
