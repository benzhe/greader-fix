.class public final Lw15;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lx15;


# direct methods
.method public constructor <init>(Lx15;)V
    .locals 0

    iput-object p1, p0, Lw15;->a:Lx15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lw15;->a:Lx15;

    .line 1
    invoke-virtual {v0}, Lyv4;->d()V

    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    iget-object v1, p0, Lw15;->a:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 3
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 4
    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lex4;->u(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 5
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lex4;->q:Lzw4;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzw4;->b(Z)V

    .line 7
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 8
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 9
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Detected application was in foreground"

    .line 12
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 13
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 14
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lw15;->c(JZ)V

    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 2

    iget-object v0, p0, Lw15;->a:Lx15;

    .line 1
    invoke-virtual {v0}, Lyv4;->d()V

    iget-object v0, p0, Lw15;->a:Lx15;

    .line 2
    invoke-virtual {v0}, Lx15;->i()V

    .line 3
    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lex4;->u(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lex4;->q:Lzw4;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzw4;->b(Z)V

    :cond_0
    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 8
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lex4;->t:Lbx4;

    invoke-virtual {v0, p1, p2}, Lbx4;->b(J)V

    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lex4;->q:Lzw4;

    invoke-virtual {v0}, Lzw4;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lw15;->c(JZ)V

    :cond_1
    return-void
.end method

.method public final c(JZ)V
    .locals 9

    iget-object v0, p0, Lw15;->a:Lx15;

    .line 1
    invoke-virtual {v0}, Lyv4;->d()V

    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lex4;->t:Lbx4;

    invoke-virtual {v0, p1, p2}, Lbx4;->b(J)V

    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 5
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 6
    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    iget-object v2, p0, Lw15;->a:Lx15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lqw4;->n:Low4;

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Session started, time"

    invoke-virtual {v2, v1, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lw15;->a:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v1}, Lrx4;->s()Lsz4;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sid"

    move-object v5, v0

    move-wide v6, p1

    .line 12
    invoke-virtual/range {v2 .. v7}, Lsz4;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, p0, Lw15;->a:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lex4;->q:Lzw4;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lzw4;->b(Z)V

    new-instance v8, Landroid/os/Bundle;

    .line 15
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "_sid"

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lw15;->a:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 17
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 18
    sget-object v1, Lew4;->j0:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x1

    const-string p3, "_aib"

    .line 19
    invoke-virtual {v8, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object p3, p0, Lw15;->a:Lx15;

    iget-object p3, p3, Lly4;->a:Lrx4;

    .line 20
    invoke-virtual {p3}, Lrx4;->s()Lsz4;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_s"

    move-wide v6, p1

    .line 21
    invoke-virtual/range {v3 .. v8}, Lsz4;->B(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lyc4;->b()Z

    iget-object p3, p0, Lw15;->a:Lx15;

    iget-object p3, p3, Lly4;->a:Lrx4;

    .line 23
    iget-object p3, p3, Lrx4;->g:Lcs4;

    .line 24
    sget-object v0, Lew4;->o0:Ldw4;

    .line 25
    invoke-virtual {p3, v2, v0}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lw15;->a:Lx15;

    iget-object p3, p3, Lly4;->a:Lrx4;

    .line 26
    invoke-virtual {p3}, Lrx4;->q()Lex4;

    move-result-object p3

    .line 27
    iget-object p3, p3, Lex4;->y:Ldx4;

    invoke-virtual {p3}, Ldx4;->a()Ljava/lang/String;

    move-result-object p3

    .line 28
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v6, Landroid/os/Bundle;

    .line 29
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_ffr"

    .line 30
    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lw15;->a:Lx15;

    iget-object p3, p3, Lly4;->a:Lrx4;

    .line 31
    invoke-virtual {p3}, Lrx4;->s()Lsz4;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_ssr"

    move-wide v4, p1

    .line 32
    invoke-virtual/range {v1 .. v6}, Lsz4;->B(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method
