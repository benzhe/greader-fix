.class public final synthetic Llx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Llx0;->a:Z

    iput p2, p0, Llx0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lyp3$a;)V
    .locals 5

    iget-boolean v0, p0, Llx0;->a:Z

    iget v1, p0, Llx0;->b:I

    .line 1
    invoke-static {}, Lqp3;->A()Lqp3$a;

    move-result-object v2

    .line 2
    iget-object v3, v2, Ls63$b;->f:Ls63;

    check-cast v3, Lqp3;

    invoke-virtual {v3}, Lqp3;->z()Z

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v0, :cond_1

    .line 3
    iget-boolean v3, v2, Ls63$b;->g:Z

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 5
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 6
    :cond_0
    iget-object v3, v2, Ls63$b;->f:Ls63;

    check-cast v3, Lqp3;

    invoke-static {v3, v0}, Lqp3;->y(Lqp3;Z)V

    .line 7
    :cond_1
    iget-boolean v0, v2, Ls63$b;->g:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 9
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 10
    :cond_2
    iget-object v0, v2, Ls63$b;->f:Ls63;

    check-cast v0, Lqp3;

    invoke-static {v0, v1}, Lqp3;->x(Lqp3;I)V

    .line 11
    invoke-virtual {v2}, Ls63$b;->j()Le83;

    move-result-object v0

    check-cast v0, Ls63;

    check-cast v0, Lqp3;

    .line 12
    iget-boolean v1, p1, Ls63$b;->g:Z

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p1}, Ls63$b;->o()V

    .line 14
    iput-boolean v4, p1, Ls63$b;->g:Z

    .line 15
    :cond_3
    iget-object p1, p1, Ls63$b;->f:Ls63;

    check-cast p1, Lyp3;

    invoke-static {p1, v0}, Lyp3;->z(Lyp3;Lqp3;)V

    return-void
.end method
