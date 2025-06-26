.class public final Lll1$a;
.super Ls63$b;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lll1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63$b<",
        "Lll1;",
        "Lll1$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lll1;->B()Lll1;

    move-result-object v0

    invoke-direct {p0, v0}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method

.method public constructor <init>(Lmm1;)V
    .locals 0

    .line 2
    invoke-static {}, Lll1;->B()Lll1;

    move-result-object p1

    invoke-direct {p0, p1}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method


# virtual methods
.method public final p(Lk53;)Lll1$a;
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

    check-cast v0, Lll1;

    invoke-static {v0, p1}, Lll1;->y(Lll1;Lk53;)V

    return-object p0
.end method
