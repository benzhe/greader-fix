.class public final synthetic Lir1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# instance fields
.field public final a:Lhl2;


# direct methods
.method public constructor <init>(Lhl2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lir1;->a:Lhl2;

    return-void
.end method


# virtual methods
.method public final a(Lyp3$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lir1;->a:Lhl2;

    .line 2
    invoke-virtual {p1}, Lyp3$a;->s()Llp3;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ls63;->v()Ls63$b;

    move-result-object v1

    .line 4
    check-cast v1, Llp3$b;

    .line 5
    invoke-virtual {p1}, Lyp3$a;->s()Llp3;

    move-result-object v2

    invoke-virtual {v2}, Llp3;->z()Lup3;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ls63;->v()Ls63$b;

    move-result-object v2

    .line 7
    check-cast v2, Lup3$a;

    iget-object v0, v0, Lhl2;->b:Lfl2;

    iget-object v0, v0, Lfl2;->b:Lwk2;

    iget-object v0, v0, Lwk2;->b:Ljava/lang/String;

    .line 8
    iget-boolean v3, v2, Ls63$b;->g:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 10
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 11
    :cond_0
    iget-object v3, v2, Ls63$b;->f:Ls63;

    check-cast v3, Lup3;

    invoke-static {v3, v0}, Lup3;->x(Lup3;Ljava/lang/String;)V

    .line 12
    iget-boolean v0, v1, Ls63$b;->g:Z

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 14
    iput-boolean v4, v1, Ls63$b;->g:Z

    .line 15
    :cond_1
    iget-object v0, v1, Ls63$b;->f:Ls63;

    check-cast v0, Llp3;

    invoke-virtual {v2}, Ls63$b;->j()Le83;

    move-result-object v2

    check-cast v2, Ls63;

    check-cast v2, Lup3;

    invoke-static {v0, v2}, Llp3;->y(Llp3;Lup3;)V

    .line 16
    invoke-virtual {p1, v1}, Lyp3$a;->p(Llp3$b;)Lyp3$a;

    return-void
.end method
