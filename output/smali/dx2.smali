.class public final Ldx2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm23;


# direct methods
.method public constructor <init>(Lm23;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldx2;->a:Lm23;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Ldx2;->a:Lm23;

    .line 2
    sget v1, Ltx2;->a:I

    .line 3
    invoke-static {}, Lp23;->z()Lp23$b;

    move-result-object v1

    invoke-virtual {v0}, Lm23;->x()I

    move-result v2

    .line 4
    iget-boolean v3, v1, Ls63$b;->g:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 6
    iput-boolean v4, v1, Ls63$b;->g:Z

    .line 7
    :cond_0
    iget-object v3, v1, Ls63$b;->f:Ls63;

    check-cast v3, Lp23;

    invoke-static {v3, v2}, Lp23;->x(Lp23;I)V

    .line 8
    invoke-virtual {v0}, Lm23;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm23$b;

    .line 9
    invoke-static {}, Lp23$a;->B()Lp23$a$a;

    move-result-object v3

    .line 10
    invoke-virtual {v2}, Lm23$b;->A()Lg23;

    move-result-object v5

    invoke-virtual {v5}, Lg23;->A()Ljava/lang/String;

    move-result-object v5

    .line 11
    iget-boolean v6, v3, Ls63$b;->g:Z

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 13
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 14
    :cond_1
    iget-object v6, v3, Ls63$b;->f:Ls63;

    check-cast v6, Lp23$a;

    invoke-static {v6, v5}, Lp23$a;->A(Lp23$a;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lm23$b;->x()Lh23;

    move-result-object v5

    .line 16
    iget-boolean v6, v3, Ls63$b;->g:Z

    if-eqz v6, :cond_2

    .line 17
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 18
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 19
    :cond_2
    iget-object v6, v3, Ls63$b;->f:Ls63;

    check-cast v6, Lp23$a;

    invoke-static {v6, v5}, Lp23$a;->y(Lp23$a;Lh23;)V

    .line 20
    invoke-virtual {v2}, Lm23$b;->y()Ly23;

    move-result-object v5

    .line 21
    iget-boolean v6, v3, Ls63$b;->g:Z

    if-eqz v6, :cond_3

    .line 22
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 23
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 24
    :cond_3
    iget-object v6, v3, Ls63$b;->f:Ls63;

    check-cast v6, Lp23$a;

    invoke-static {v6, v5}, Lp23$a;->z(Lp23$a;Ly23;)V

    .line 25
    invoke-virtual {v2}, Lm23$b;->B()I

    move-result v2

    .line 26
    iget-boolean v5, v3, Ls63$b;->g:Z

    if-eqz v5, :cond_4

    .line 27
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 28
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 29
    :cond_4
    iget-object v5, v3, Ls63$b;->f:Ls63;

    check-cast v5, Lp23$a;

    invoke-static {v5, v2}, Lp23$a;->x(Lp23$a;I)V

    .line 30
    invoke-virtual {v3}, Ls63$b;->j()Le83;

    move-result-object v2

    check-cast v2, Ls63;

    check-cast v2, Lp23$a;

    .line 31
    iget-boolean v3, v1, Ls63$b;->g:Z

    if-eqz v3, :cond_5

    .line 32
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 33
    iput-boolean v4, v1, Ls63$b;->g:Z

    .line 34
    :cond_5
    iget-object v3, v1, Ls63$b;->f:Ls63;

    check-cast v3, Lp23;

    invoke-static {v3, v2}, Lp23;->y(Lp23;Lp23$a;)V

    goto :goto_0

    .line 35
    :cond_6
    invoke-virtual {v1}, Ls63$b;->j()Le83;

    move-result-object v0

    check-cast v0, Ls63;

    check-cast v0, Lp23;

    .line 36
    invoke-virtual {v0}, Ls63;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
