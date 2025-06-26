.class public final Lc25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lk25;

.field public final synthetic f:Lj25;


# direct methods
.method public constructor <init>(Lj25;Lk25;)V
    .locals 0

    iput-object p1, p0, Lc25;->f:Lj25;

    iput-object p2, p0, Lc25;->e:Lk25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lc25;->f:Lj25;

    .line 1
    iget-object v1, v0, Lj25;->j:Lrx4;

    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    invoke-virtual {v1}, Lox4;->d()V

    new-instance v1, Lgs4;

    invoke-direct {v1, v0}, Lgs4;-><init>(Lj25;)V

    invoke-virtual {v1}, Lb25;->g()V

    iput-object v1, v0, Lj25;->c:Lgs4;

    iget-object v1, v0, Lj25;->j:Lrx4;

    .line 2
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 3
    iget-object v2, v0, Lj25;->a:Lkx4;

    .line 4
    iput-object v2, v1, Lcs4;->c:Lbs4;

    .line 5
    new-instance v1, Li15;

    invoke-direct {v1, v0}, Li15;-><init>(Lj25;)V

    invoke-virtual {v1}, Lb25;->g()V

    iput-object v1, v0, Lj25;->i:Li15;

    new-instance v1, Lb35;

    invoke-direct {v1, v0}, Lb35;-><init>(Lj25;)V

    invoke-virtual {v1}, Lb25;->g()V

    iput-object v1, v0, Lj25;->f:Lb35;

    new-instance v1, Lyz4;

    invoke-direct {v1, v0}, Lyz4;-><init>(Lj25;)V

    invoke-virtual {v1}, Lb25;->g()V

    iput-object v1, v0, Lj25;->h:Lyz4;

    new-instance v1, La25;

    invoke-direct {v1, v0}, La25;-><init>(Lj25;)V

    invoke-virtual {v1}, Lb25;->g()V

    iput-object v1, v0, Lj25;->e:La25;

    new-instance v1, Lyw4;

    invoke-direct {v1, v0}, Lyw4;-><init>(Lj25;)V

    iput-object v1, v0, Lj25;->d:Lyw4;

    iget v1, v0, Lj25;->o:I

    iget v2, v0, Lj25;->p:I

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lj25;->j:Lrx4;

    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 7
    iget v2, v0, Lj25;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lj25;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Not all upload components initialized"

    invoke-virtual {v1, v4, v2, v3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lj25;->k:Z

    .line 8
    iget-object v0, p0, Lc25;->f:Lj25;

    .line 9
    iget-object v1, v0, Lj25;->j:Lrx4;

    .line 10
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lox4;->d()V

    .line 12
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v1

    invoke-virtual {v1}, Lgs4;->Q()V

    iget-object v1, v0, Lj25;->j:Lrx4;

    .line 13
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lex4;->e:Lbx4;

    invoke-virtual {v1}, Lbx4;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Lj25;->j:Lrx4;

    .line 15
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 16
    iget-object v1, v1, Lex4;->e:Lbx4;

    iget-object v2, v0, Lj25;->j:Lrx4;

    .line 17
    iget-object v2, v2, Lrx4;->n:Lb20;

    .line 18
    invoke-interface {v2}, Lb20;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbx4;->b(J)V

    .line 19
    :cond_1
    invoke-virtual {v0}, Lj25;->D()V

    return-void
.end method
