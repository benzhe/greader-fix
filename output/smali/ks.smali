.class public final Lks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lis;",
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
            "Lft;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ltt;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lxt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;)V
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
            "Lft;",
            ">;",
            "Ljj7<",
            "Ltt;",
            ">;",
            "Ljj7<",
            "Lxt;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lks;->a:Ljj7;

    .line 3
    iput-object p2, p0, Lks;->b:Ljj7;

    .line 4
    iput-object p3, p0, Lks;->c:Ljj7;

    .line 5
    iput-object p4, p0, Lks;->d:Ljj7;

    .line 6
    iput-object p5, p0, Lks;->e:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lks;->a:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ldv;

    iget-object v0, p0, Lks;->b:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ldv;

    iget-object v0, p0, Lks;->c:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lft;

    iget-object v0, p0, Lks;->d:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ltt;

    iget-object v0, p0, Lks;->e:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lxt;

    .line 2
    new-instance v0, Lis;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lis;-><init>(Ldv;Ldv;Lft;Ltt;Lxt;)V

    return-object v0
.end method
