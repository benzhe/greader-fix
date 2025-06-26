.class public final Lht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzt;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Landroid/content/Context;",
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
            "Lnt;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ldv;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljj7<",
            "Lcu;",
            ">;",
            "Ljj7<",
            "Lnt;",
            ">;",
            "Ljj7<",
            "Ldv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lht;->a:Ljj7;

    .line 3
    iput-object p2, p0, Lht;->b:Ljj7;

    .line 4
    iput-object p3, p0, Lht;->c:Ljj7;

    .line 5
    iput-object p4, p0, Lht;->d:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lht;->a:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lht;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcu;

    iget-object v2, p0, Lht;->c:Ljj7;

    invoke-interface {v2}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnt;

    iget-object v3, p0, Lht;->d:Ljj7;

    invoke-interface {v3}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldv;

    .line 2
    new-instance v3, Llt;

    invoke-direct {v3, v0, v1, v2}, Llt;-><init>(Landroid/content/Context;Lcu;Lnt;)V

    return-object v3
.end method
