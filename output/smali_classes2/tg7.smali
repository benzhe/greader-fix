.class public final Ltg7;
.super Lmb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltg7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lmb7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final f:Llb7;

.field public final g:Lw38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw38<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llb7;Lw38;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb7;",
            "Lw38<",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    .line 2
    iput-object p1, p0, Ltg7;->f:Llb7;

    .line 3
    iput-object p2, p0, Ltg7;->g:Lw38;

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltg7;->f:Llb7;

    new-instance v1, Ltg7$a;

    iget-object v2, p0, Ltg7;->g:Lw38;

    invoke-direct {v1, p1, v2}, Ltg7$a;-><init>(Lx38;Lw38;)V

    invoke-interface {v0, v1}, Llb7;->a(Ljb7;)V

    return-void
.end method
