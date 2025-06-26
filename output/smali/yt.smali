.class public final Lyt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lxt;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lcu;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lzt;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lcv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljj7;Ljj7;Ljj7;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj7<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljj7<",
            "Lcu;",
            ">;",
            "Ljj7<",
            "Lzt;",
            ">;",
            "Ljj7<",
            "Lcv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lyt;->a:Ljj7;

    .line 3
    iput-object p2, p0, Lyt;->b:Ljj7;

    .line 4
    iput-object p3, p0, Lyt;->c:Ljj7;

    .line 5
    iput-object p4, p0, Lyt;->d:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lyt;->a:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lyt;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcu;

    iget-object v2, p0, Lyt;->c:Ljj7;

    invoke-interface {v2}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzt;

    iget-object v3, p0, Lyt;->d:Ljj7;

    invoke-interface {v3}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcv;

    .line 2
    new-instance v4, Lxt;

    invoke-direct {v4, v0, v1, v2, v3}, Lxt;-><init>(Ljava/util/concurrent/Executor;Lcu;Lzt;Lcv;)V

    return-object v4
.end method
