.class public final Lrp3$a$a;
.super Ls63$b;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrp3$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63$b<",
        "Lrp3$a;",
        "Lrp3$a$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lrp3$a;->B()Lrp3$a;

    move-result-object v0

    invoke-direct {p0, v0}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method

.method public constructor <init>(Lrq3;)V
    .locals 0

    .line 2
    invoke-static {}, Lrp3$a;->B()Lrp3$a;

    move-result-object p1

    invoke-direct {p0, p1}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method


# virtual methods
.method public final p(Lrp3$d$a;)Lrp3$a$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls63$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls63$b;->o()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls63$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ls63$b;->f:Ls63;

    check-cast v0, Lrp3$a;

    invoke-virtual {p1}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Lrp3$d;

    invoke-static {v0, p1}, Lrp3$a;->y(Lrp3$a;Lrp3$d;)V

    return-object p0
.end method

.method public final q(Lrp3$c;)Lrp3$a$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls63$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls63$b;->o()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls63$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ls63$b;->f:Ls63;

    check-cast v0, Lrp3$a;

    invoke-static {v0, p1}, Lrp3$a;->x(Lrp3$a;Lrp3$c;)V

    return-object p0
.end method
