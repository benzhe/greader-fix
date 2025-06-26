.class public final Luu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ltu;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ldv;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ldv;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ldu;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lzu;",
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
            "Ldv;",
            ">;",
            "Ljj7<",
            "Ldv;",
            ">;",
            "Ljj7<",
            "Ldu;",
            ">;",
            "Ljj7<",
            "Lzu;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Luu;->a:Ljj7;

    .line 3
    iput-object p2, p0, Luu;->b:Ljj7;

    .line 4
    iput-object p3, p0, Luu;->c:Ljj7;

    .line 5
    iput-object p4, p0, Luu;->d:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Luu;->a:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldv;

    iget-object v1, p0, Luu;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldv;

    iget-object v2, p0, Luu;->c:Ljj7;

    invoke-interface {v2}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Luu;->d:Ljj7;

    invoke-interface {v3}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v3

    .line 2
    new-instance v4, Ltu;

    check-cast v2, Ldu;

    check-cast v3, Lzu;

    invoke-direct {v4, v0, v1, v2, v3}, Ltu;-><init>(Ldv;Ldv;Ldu;Lzu;)V

    return-object v4
.end method
