.class public final Ly62;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldk1;

.field public final b:Lw52;

.field public final c:Lda1;


# direct methods
.method public constructor <init>(Ldk1;Lpp2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly62;->a:Ldk1;

    .line 3
    new-instance v0, Lw52;

    invoke-direct {v0, p2}, Lw52;-><init>(Lpp2;)V

    iput-object v0, p0, Ly62;->b:Lw52;

    .line 4
    iget-object p1, p1, Ldk1;->e:Led0;

    .line 5
    new-instance p2, Lx62;

    invoke-direct {p2, v0, p1}, Lx62;-><init>(Lw52;Led0;)V

    .line 6
    iput-object p2, p0, Ly62;->c:Lda1;

    return-void
.end method
