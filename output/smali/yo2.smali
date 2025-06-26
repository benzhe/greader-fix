.class public final Lyo2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "TO;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Llo2;

.field public final synthetic b:Lqo2;


# direct methods
.method public constructor <init>(Lqo2;Llo2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyo2;->b:Lqo2;

    iput-object p2, p0, Lyo2;->a:Llo2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyo2;->b:Lqo2;

    iget-object v0, v0, Lqo2;->f:Lko2;

    .line 2
    iget-object v0, v0, Lko2;->c:Lxo2;

    .line 3
    iget-object v1, p0, Lyo2;->a:Llo2;

    invoke-interface {v0, v1, p1}, Lxo2;->O(Llo2;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lyo2;->b:Lqo2;

    iget-object p1, p1, Lqo2;->f:Lko2;

    .line 2
    iget-object p1, p1, Lko2;->c:Lxo2;

    .line 3
    iget-object v0, p0, Lyo2;->a:Llo2;

    invoke-interface {p1, v0}, Lxo2;->U(Llo2;)V

    return-void
.end method
