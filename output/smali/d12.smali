.class public final Ld12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lz02;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lg51;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ld02;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lba1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lg51;",
            ">;",
            "Lmb3<",
            "Ld02;",
            ">;",
            "Lmb3<",
            "Lba1;",
            ">;",
            "Lmb3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lmb3<",
            "Lzv2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld12;->a:Lmb3;

    .line 3
    iput-object p2, p0, Ld12;->b:Lmb3;

    .line 4
    iput-object p3, p0, Ld12;->c:Lmb3;

    .line 5
    iput-object p4, p0, Ld12;->d:Lmb3;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ld12;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lg51;

    iget-object v0, p0, Ld12;->b:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ld02;

    iget-object v0, p0, Ld12;->c:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lba1;

    iget-object v0, p0, Ld12;->d:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v6

    .line 3
    new-instance v0, Lz02;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lz02;-><init>(Lg51;Ld02;Lba1;Ljava/util/concurrent/ScheduledExecutorService;Lzv2;)V

    return-object v0
.end method
