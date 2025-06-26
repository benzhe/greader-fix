.class public final Lxo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lto1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lx91;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ldb1;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lrb1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lwb1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lld1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lsk2;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lwk2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lx91;",
            ">;",
            "Lmb3<",
            "Ldb1;",
            ">;",
            "Lmb3<",
            "Lrb1;",
            ">;",
            "Lmb3<",
            "Lwb1;",
            ">;",
            "Lmb3<",
            "Lld1;",
            ">;",
            "Lmb3<",
            "Lsk2;",
            ">;",
            "Lmb3<",
            "Lwk2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxo1;->a:Lmb3;

    .line 3
    iput-object p2, p0, Lxo1;->b:Lmb3;

    .line 4
    iput-object p3, p0, Lxo1;->c:Lmb3;

    .line 5
    iput-object p4, p0, Lxo1;->d:Lmb3;

    .line 6
    iput-object p5, p0, Lxo1;->e:Lmb3;

    .line 7
    iput-object p6, p0, Lxo1;->f:Lmb3;

    .line 8
    iput-object p7, p0, Lxo1;->g:Lmb3;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lxo1;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lx91;

    iget-object v0, p0, Lxo1;->b:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ldb1;

    iget-object v0, p0, Lxo1;->c:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lrb1;

    iget-object v0, p0, Lxo1;->d:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lwb1;

    iget-object v0, p0, Lxo1;->e:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lld1;

    iget-object v0, p0, Lxo1;->f:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lsk2;

    iget-object v0, p0, Lxo1;->g:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lwk2;

    .line 2
    new-instance v0, Lto1;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lto1;-><init>(Lx91;Ldb1;Lrb1;Lwb1;Lld1;Lsk2;Lwk2;)V

    return-object v0
.end method
