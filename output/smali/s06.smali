.class public final Ls06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lr06;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lf06;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lj96;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljj7;Ljj7;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj7<",
            "Lf06;",
            ">;",
            "Ljj7<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljj7<",
            "Lj96;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls06;->a:Ljj7;

    .line 3
    iput-object p2, p0, Ls06;->b:Ljj7;

    .line 4
    iput-object p3, p0, Ls06;->c:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls06;->a:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf06;

    iget-object v1, p0, Ls06;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Ls06;->c:Ljj7;

    invoke-interface {v2}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj96;

    .line 2
    new-instance v3, Lr06;

    invoke-direct {v3, v0, v1, v2}, Lr06;-><init>(Lf06;Landroid/view/LayoutInflater;Lj96;)V

    return-object v3
.end method
