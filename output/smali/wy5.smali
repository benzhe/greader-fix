.class public final Lwy5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lty5;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lk56;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ls56;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lr26;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lz96;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lw26;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lv26;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj7<",
            "Lk56;",
            ">;",
            "Ljj7<",
            "Ls56;",
            ">;",
            "Ljj7<",
            "Lr26;",
            ">;",
            "Ljj7<",
            "Lz96;",
            ">;",
            "Ljj7<",
            "Lw26;",
            ">;",
            "Ljj7<",
            "Lv26;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwy5;->a:Ljj7;

    .line 3
    iput-object p2, p0, Lwy5;->b:Ljj7;

    .line 4
    iput-object p3, p0, Lwy5;->c:Ljj7;

    .line 5
    iput-object p4, p0, Lwy5;->d:Ljj7;

    .line 6
    iput-object p5, p0, Lwy5;->e:Ljj7;

    .line 7
    iput-object p6, p0, Lwy5;->f:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lwy5;->a:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lk56;

    iget-object v0, p0, Lwy5;->b:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ls56;

    iget-object v0, p0, Lwy5;->c:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr26;

    iget-object v0, p0, Lwy5;->d:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lz96;

    iget-object v0, p0, Lwy5;->e:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lw26;

    iget-object v0, p0, Lwy5;->f:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lv26;

    .line 2
    new-instance v0, Lty5;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lty5;-><init>(Lk56;Ls56;Lr26;Lz96;Lw26;Lv26;)V

    return-object v0
.end method
